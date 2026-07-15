---
title: Decompression Theory Models & Physiology
tags:
  - sidemount/advanced
  - status/completed
---

# Decompression Theory Models & Physiology (Decompression Models & Physiology)

Technical sidemount diving inevitably requires managing decompression procedures. Decompression theory has evolved from early empirical tables to modern bubble dynamics, and the medical understanding of decompression physiology continues to be refined.

This article provides an in-depth comparison of the two major decompression model families (Bühlmann GF vs. VPM), analyzes the **modern medical controversy around Deep Stops and the industry's practical pivot**, and discusses the physiological impact of Patent Foramen Ovale (PFO) and microbubbles on decompression risk [1][2].

---

## 📈 1. Two Major Decompression Model Families

Modern decompression software and dive computers are based on two mathematical model categories:

### 🟢 Dissolved Gas Models (Neo-Haldanean Gas-Content Models)
*   **Representative Model**: **Bühlmann ZHL-16B/C (with Gradient Factors)**.
*   **Physical Assumption**: The human body is divided into 16 virtual tissue compartments with half-times ranging from 4 minutes to 635 minutes. The model assumes inert gas exists entirely in a dissolved state within body fluids. As long as the tissue supersaturation pressure does not exceed a defined critical threshold (M-Value), decompression sickness will not occur [2][3].
*   **Characteristics**: Computationally simple. GF Low/High values provide flexible conservatism tuning. Currently the most widely adopted baseline model in technical diving [1][3].

### 🔵 Bubble Dynamics Models
*   **Representative Models**: **VPM-B (Varying Permeability Model)** and **RGBM (Reduced Gradient Bubble Model)**.
*   **Physical Assumption**: Assumes the human body contains countless microscopic "bubble nuclei" even before diving. During ascent, these nuclei expand as ambient pressure decreases. The model controls ascent rates and stops to keep bubble diameters below a critical size, preventing immune responses or physical vessel occlusion [2][4].
*   **Characteristics**: Produces deeper first stop depths (Deep Stops). However, computations are extremely complex, and safety under extreme dive profiles has been challenged in recent years [4][5].

---

## 🚨 2. The Deep Stops Controversy & Modern Pivot

Between 2000–2010, the technical diving community (including early GUE and VPM practitioners) advocated "Deep Stops"—short stops inserted at approximately half the maximum depth to suppress microbubble growth [5].

However, recent decompression medicine research (particularly the **UHMS Decompression Workshop consensus and US Navy NEDU experimental data**) has decisively overturned this approach [5][6]:

```
【The Physiological Cost of Deep Stops】
  - Benefit: Suppresses microbubble growth (fast tissue off-gassing)
  - Cost ──> Extends time at depth, causing medium and slow tissues
             (e.g., joints, spinal cord) to continue absorbing inert gas (on-gassing) [5][6].
```

*   **Key Evidence**: NEDU testing found that under equal total decompression time, the deep-stop group had a **significantly higher incidence of neurological DCS** compared to the control group that ascended directly to shallow stops [5][6].
*   **Modern Practical Pivot**:
    *   **Abandon VPM/RGBM**; return to **Bühlmann ZHL-16C + GF** [1].
    *   **Raise GF Low values**: Legacy settings of `GF Low = 10` or `20` forced computers to generate deep stops. Modern technical diving recommends setting GF Low between **`30` and `50`** (e.g., **50/70, 50/80, or 30/80**), shifting the first stop shallower, accelerating medium/slow tissue off-gassing, and reducing overall decompression obligation [1][5].

---

## 🫀 3. Decompression Physiology: PFO, Microbubbles & Thermal Management

DCS incidence depends not only on computer algorithms but also on individual physiological state.

### Patent Foramen Ovale (PFO)
*   **Physiology**: PFO is a small hole in the atrial septum that persists from fetal development. Approximately **20–25% of healthy adults** have this defect [7].
*   **DCI Risk**: Under normal conditions, venous microbubbles returning from the lower body are filtered out by the pulmonary capillary bed. In divers with PFO, straining (e.g., lifting gear or breath-holding) changes atrial pressure dynamics, allowing venous blood to shunt directly to the left atrium (Right-to-Left Shunt), **sending microbubbles directly into the arterial circulation and toward the brain or spinal cord, causing severe neurological DCI** [7][8].
*   **Prevention**: Technical divers conducting frequent deep decompression dives should strongly consider transesophageal echocardiography (TEE) screening. If PFO is confirmed, set extremely conservative GF values (e.g., GF High ≤ 70) [7].

### Vascular Microbubbles
*   Shear forces and micro-irregularities in vessel walls generate bubble nuclei. Post-dive venous Doppler ultrasound commonly detects venous gas emboli (VGE). VGE counts correlate positively with DCI, but the relationship is not absolute. This demonstrates that DCS is a multi-factorial physiological response [2][8].

### Thermal Status & Decompression Physiology
Temperature dramatically alters blood perfusion rates, directly affecting inert gas uptake and elimination [5]:
*   **Descent & Bottom Phase (Warm)**: The body is warm, vessels are dilated, tissue perfusion is high, and inert gas **absorption (on-gassing) is accelerated**.
*   **Decompression Phase (Cold)**: If the body cools during prolonged static stops, peripheral vasoconstriction reduces perfusion, **severely impairing inert gas elimination (off-gassing)**.
*   **Golden Rule**: **"Stay cool during the bottom phase (to minimize gas uptake) and stay warm during deco (to maximize off-gassing)"** [5]. Active thermal management via drysuit squeeze purging and heated vests provides fine-grained temperature control.

---

## 📚 References

1. **DAN (Divers Alert Network)** - *Decompression Theory and Gradient Factors*: Dissolved gas models, Bühlmann ZHL-16 parameters, and GF settings. [Link](https://dan.org/health-medicine/health-resources/diseases-conditions/decompression-theory-and-gradient-factors/)
2. **Mark Powell** - *Deco for Divers: A Guide to Decompression Theory and Physiology* (Book): Foundational decompression science covering Haldanean models, bubble models, tissue half-times, and PFO/Doppler physiology. [Link](https://www.deco-for-divers.com)
3. **UHMS** - *Decompression Theory and Physiology of Bubble Formation*: Official academic guidance on inert gas saturation, M-Value thresholds, and microbubble nucleation. [Link](https://www.uhms.org/resources/hyperbaric-oxygen-info-and-treatment-centers.html)
4. **VPM-B Official Technical Specs**: Bubble dynamics model, critical onset bubble radius, and VPM-B algorithm foundations. [Link](http://www.decompression.org/vpm/VPM_Technical_Description.htm)
5. **DAN World** - *The Dilemma of Deep Stops*: NEDU test results on deep stops, slow-tissue on-gassing costs, and the modern GF Low 30–50 pivot. [Link](https://world.dan.org/safety-prevention/diver-safety/technical-diving/the-dilemma-of-deep-stops/)
6. **NEDU Technical Report** - *Redundant Testing of Deep Stops in Air and Nitrox Diving*: The landmark controlled experiment showing increased DCS incidence with deep stops. [Link](https://archive.rubicon-foundation.org/xmlui/handle/123456789/10145)
7. **DAN** - *Patent Foramen Ovale (PFO) and Decompression Illness*: PFO anatomy, right-to-left shunt mechanism, and neurological DCI risk assessment. [Link](https://dan.org/health-medicine/health-resources/diseases-conditions/patent-foramen-ovale-pfo-and-decompression-illness/)
8. **Diving and Hyperbaric Medicine Journal, 55(1), 2025** - *Agreement of precordial and subclavian Doppler ultrasound VGE grades*: Standardisation of Doppler VGE grading, the association between peak bubble grade and DCS probability, and individual variability. [Link](https://www.dhmjournal.com/index.php/journals?view=article&id=352)
