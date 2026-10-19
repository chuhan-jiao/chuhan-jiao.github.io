---
layout: about
title: about
permalink: /
subtitle: Ph.D. Candidate in Computer Science &bull; University of Stuttgart

profile:
  align: right
  image: prof_pic.jpg
  image_circular: false
  more_info: >
    <div class="my-3 text-center">
      <span class="badge border me-1 mb-1" style="background-color: var(--global-card-bg-color, #ffffff); color: var(--global-text-color, inherit); border-color: var(--global-divider-color, #e1e4e8) !important;">Egocentric Vision</span>
      <span class="badge border me-1 mb-1" style="background-color: var(--global-card-bg-color, #ffffff); color: var(--global-text-color, inherit); border-color: var(--global-divider-color, #e1e4e8) !important;">Human Behaviour Modelling</span>
      <span class="badge border me-1 mb-1" style="background-color: var(--global-card-bg-color, #ffffff); color: var(--global-text-color, inherit); border-color: var(--global-divider-color, #e1e4e8) !important;">Eye Tracking</span>
      <span class="badge border me-1 mb-1" style="background-color: var(--global-card-bg-color, #ffffff); color: var(--global-text-color, inherit); border-color: var(--global-divider-color, #e1e4e8) !important;">Multimodal Sensing</span>
      <span class="badge border me-1 mb-1" style="background-color: var(--global-card-bg-color, #ffffff); color: var(--global-text-color, inherit); border-color: var(--global-divider-color, #e1e4e8) !important;">World Models & Robot Learning</span>
    </div>

nav: true
nav_order: 1

selected_papers: true
social: true

announcements:
  enabled: false

latest_posts:
  enabled: false
---

<div style="clear: both; margin: 0.5rem 0 1.5rem; padding: 14px 18px; background: rgba(0, 118, 223, 0.08); border-left: 5px solid var(--global-theme-color, #1d4ed8); border-radius: 6px; color: var(--global-text-color, #1e3a8a); font-size: 1.05rem;">
  <strong>I am on the job market for faculty or research scientist positions. Please feel free to reach out!</strong>
</div>

I am a final-year Ph.D. candidate in Computer Science at the [Collaborative Artificial Intelligence Group](https://www.collaborative-ai.org/), [University of Stuttgart](https://www.uni-stuttgart.de/en/), supervised by [Prof. Andreas Bulling](https://www.collaborative-ai.org/people/bulling/). Funded by the Horizon Europe MSCA Doctoral Network [Eyes4ICU](https://www.eyes4icu.eu/), my Ph.D. research focuses on computational modelling of human gaze behaviour and its multimodal coordination with head, hand, and body movements. Building on this foundation, I am now expanding my research to egocentric video generation, world models, and robot policy learning for human-robot interaction and collaboration (Physical AI).

In summer 2026, I was a Research Intern at the [Toyota Research Institute (TRI)](https://www.tri.global/) in Cambridge, Massachusetts, within the Robotics / Human-Aware Interaction and Learning (HAIL) team, mentored by [Dr. John Gideon](http://www.johngideon.me/), [Dr. Anshul Gupta](https://anshul-gupta24.github.io/), and [Dr. Guy Rosman](https://www.tri.global/about-us/dr-guy-rosman), where I worked on egocentric video generation. In autumn 2024, I was a Visiting Doctoral Researcher at [ETH Zürich](https://ethz.ch/en.html) in the [GeoGaze Lab](https://geogaze.ethz.ch/), hosted by [Dr. Peter Kiefer](https://pekiefer.ethz.ch/).

Prior to my Ph.D., I received my M.Sc. degree (with Honours) in Computer Science from [Aalto University](https://www.aalto.fi/en), advised by [Prof. Antti Oulasvirta](https://users.aalto.fi/~oulasvir/), and my B.Eng. degree in Computer Science and Technology from [Donghua University](https://english.dhu.edu.cn/).

### Research Overview

My research focuses on **human behaviour modelling**, **egocentric computer vision**, and **robot learning**, with the overarching goal of transferring human behavioural priors and manipulation skills to robots for natural **human-robot interaction (HRI)** and collaboration. Moving from modelling *where* people look and *how* they coordinate their movements to generating *what* people see across multiple perspectives in shared environments, I aim to equip embodied agents with the visual and behavioural understanding needed to work alongside humans rather than solely in isolation.

<div class="research-flowchart my-4 p-3 rounded" style="background-color: var(--global-code-bg-color, var(--card-bg, #f8f9fa)); border: 1px solid var(--global-divider-color, #e1e4e8);">
  <div class="text-center p-3 mb-3 rounded shadow-sm" style="background-color: var(--global-card-bg-color, #ffffff); border: 1px solid var(--global-theme-color, #0076df);">
    <strong class="fs-5" style="color: var(--global-theme-color, #0076df);">From Egocentric Human Behaviour Modelling to Human-Robot Interaction &amp; Physical AI</strong>
    <p class="small mb-0 mt-1" style="color: var(--global-text-color-light, #6c757d);">Decoding multimodal human attention, synthesising multi-perspective egocentric experiences, and transferring human skills to robots for natural human-robot interaction</p>
  </div>
  <div class="row g-3">
    <div class="col-md-4">
      <div class="h-100 p-3 rounded shadow-sm" style="background-color: var(--global-card-bg-color, #ffffff); border: 1px solid var(--global-divider-color, #e1e4e8); color: var(--global-text-color, inherit);">
        <h6 class="fw-bold mb-2" style="color: var(--global-text-color, inherit);">1. Gaze &amp; Visual Attention Modelling <span class="fw-normal fst-italic d-block small" style="color: var(--global-text-color-light, #6c757d);">Where We Look</span></h6>
        <p class="small mb-2" style="color: var(--global-text-color-light, #6c757d);">Continuous spatio-temporal representation and generative synthesis of fine-grained eye movements across user identities and visual stimuli.</p>
        <div class="small"><strong>Key Works:</strong> <a href="#jiao2023supreyes">SUPREYES (UIST'23)</a> &bull; <a href="#jiao2026diffgaze">DiffGaze (TiiS'26)</a> &bull; <a href="#jiao2026diffeyesyn">DiffEyeSyn (FG'26)</a></div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="h-100 p-3 rounded shadow-sm" style="background-color: var(--global-card-bg-color, #ffffff); border: 1px solid var(--global-divider-color, #e1e4e8); color: var(--global-text-color, inherit);">
        <h6 class="fw-bold mb-2" style="color: var(--global-text-color, inherit);">2. Multimodal Coordination <span class="fw-normal fst-italic d-block small" style="color: var(--global-text-color-light, #6c757d);">How We Move</span></h6>
        <p class="small mb-2" style="color: var(--global-text-color-light, #6c757d);">Modelling cross-modal coordination between eye gaze, head orientation, wrist/hand motion, and body posture from everyday wearable sensors.</p>
        <div class="small"><strong>Key Works:</strong> <a href="#jiao2025hagi">HAGI (UIST'25)</a> &bull; <a href="#jiao2025hagi++">HAGI++ (TVCG'26)</a> &bull; [Under Submission]</div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="h-100 p-3 rounded shadow-sm" style="background-color: var(--global-card-bg-color, #ffffff); border: 1px solid var(--global-divider-color, #e1e4e8); color: var(--global-text-color, inherit);">
        <h6 class="fw-bold mb-2" style="color: var(--global-text-color, inherit);">3. World Models &amp; Robot Learning for HRI <span class="fw-normal fst-italic d-block small" style="color: var(--global-text-color-light, #6c757d);">What We See &amp; How We Interact</span></h6>
        <p class="small mb-2" style="color: var(--global-text-color-light, #6c757d);">Moving beyond single-view perception to multi-perspective egocentric video generation and generative world models, transferring human skills into robot policies (VLA/WAM) for fluent human-robot interaction and collaboration.</p>
        <div class="small"><strong>Key Works:</strong> [Under Submission]</div>
      </div>
    </div>
  </div>
</div>

### Academic Services

**Organising**:
- Associate Chair, ACM Symposium on Eye Tracking Research & Applications (ETRA) Full Papers, 2027
- Workshop Co-organiser, International Workshop on Pervasive Eye Tracking and Mobile Eye-Based Interaction (PETMEI @ ACM ETRA), 2024 & 2025

**Reviewing**:
- Conferences: ACM CHI, UIST, IMWUT (Ubicomp), ETRA
- Journals: IEEE TIP, TVCG, TCSVT

### Beyond Research

Outside of research, I enjoy playing basketball and pool (billiards), and I have a deep appreciation and knowledge of pool cues. Earlier on, I was an avid Go player and reached 9 Dan on Fox Go. After modern Go AI changed the nature of the game, I found it less exciting and play much less nowadays.
