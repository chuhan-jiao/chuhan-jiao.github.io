param(
    [int]$Port = 4000,
    [string]$Root = "D:\PhD\cj-website\_site"
)

$listener = New-Object System.Net.HttpListener
$prefix = "http://localhost:$Port/"
$listener.Prefixes.Add($prefix)

try {
    $listener.Start()
    Write-Output "HTTP server started successfully. Listening at $prefix (Root: $Root) with no-cache headers"
} catch {
    Write-Error "Failed to start HttpListener: $_"
    exit 1
}

$mimeTypes = @{
    ".html"  = "text/html; charset=utf-8"
    ".htm"   = "text/html; charset=utf-8"
    ".css"   = "text/css; charset=utf-8"
    ".js"    = "application/javascript; charset=utf-8"
    ".json"  = "application/json; charset=utf-8"
    ".png"   = "image/png"
    ".jpg"   = "image/jpeg"
    ".jpeg"  = "image/jpeg"
    ".gif"   = "image/gif"
    ".svg"   = "image/svg+xml"
    ".ico"   = "image/x-icon"
    ".woff"  = "font/woff"
    ".woff2" = "font/woff2"
    ".ttf"   = "font/ttf"
    ".pdf"   = "application/pdf"
    ".txt"   = "text/plain; charset=utf-8"
}

try {
    while ($listener.IsListening) {
        $context = $listener.GetContext()
        $request = $context.Request
        $response = $context.Response

        $response.Headers.Add("Cache-Control", "no-store, no-cache, must-revalidate")
        $response.Headers.Add("Pragma", "no-cache")
        $response.Headers.Add("Expires", "0")
        $response.KeepAlive = $false

        $rawUrl = $request.Url.LocalPath
        $decodedUrl = [System.Uri]::UnescapeDataString($rawUrl)
        
        $relPath = $decodedUrl.TrimStart('/') -replace '/', '\'
        $targetPath = if ([string]::IsNullOrEmpty($relPath)) {
            Join-Path $Root "index.html"
        } else {
            Join-Path $Root $relPath
        }

        if (Test-Path -Path $targetPath -PathType Container) {
            $indexPath = Join-Path $targetPath "index.html"
            if (Test-Path -Path $indexPath -PathType Leaf) {
                $targetPath = $indexPath
            }
        } elseif (-not (Test-Path -Path $targetPath -PathType Leaf)) {
            if (Test-Path -Path "$targetPath.html" -PathType Leaf) {
                $targetPath = "$targetPath.html"
            } elseif (Test-Path -Path (Join-Path $targetPath "index.html") -PathType Leaf) {
                $targetPath = Join-Path $targetPath "index.html"
            }
        }

        if (Test-Path -Path $targetPath -PathType Leaf) {
            $ext = [System.IO.Path]::GetExtension($targetPath).ToLower()
            $contentType = if ($mimeTypes.ContainsKey($ext)) { $mimeTypes[$ext] } else { "application/octet-stream" }
            $response.ContentType = $contentType
            $response.StatusCode = 200

            try {
                $bytes = [System.IO.File]::ReadAllBytes($targetPath)
                $response.ContentLength64 = $bytes.Length
                if ($request.HttpMethod -ne "HEAD") {
                    $response.OutputStream.Write($bytes, 0, $bytes.Length)
                }
            } catch {
                $response.StatusCode = 500
            }
        } else {
            $response.StatusCode = 404
            $msg = [System.Text.Encoding]::UTF8.GetBytes("404 Not Found: $decodedUrl")
            $response.ContentType = "text/plain; charset=utf-8"
            $response.ContentLength64 = $msg.Length
            if ($request.HttpMethod -ne "HEAD") {
                $response.OutputStream.Write($msg, 0, $msg.Length)
            }
        }

        $response.OutputStream.Close()
    }
} finally {
    $listener.Stop()
    $listener.Close()
}
