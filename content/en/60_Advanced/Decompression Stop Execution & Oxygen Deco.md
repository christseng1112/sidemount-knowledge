---
title: Decompression Stop Execution & Oxygen Deco
tags:
  - sidemount/advanced
  - status/completed
---

# Decompression Stop Execution & Oxygen Deco (Running Deco Stops & O₂ Deco)

[[en/40_Gas_Management/Decompression Planning Software & Gradient Factors|Decompression Planning Software & Gradient Factors]] covers how to generate stop tables. [[en/60_Advanced/Multi-Cylinder & Decompression Stage Configuration|Multi-Cylinder & Decompression Stage Configuration]] covers how to rig deco cylinders. This article fills the gap between: **once the table is printed and the cylinders are mounted, how do you "execute" decompression cleanly in the water?** The essence of deco execution is discipline: the correct depth, the correct gas, the correct time, and holding perfectly still [1][2].

---

## 📏 Four Dimensions of Execution

1.  **Depth Precision**: Maintain stop depth within **±0.5 meters**—especially at the final 6m and 3m stops, where the pressure gradient is steepest. Being 1 meter too shallow effectively alters your decompression model. In surge, use average depth, biased toward the deeper edge.
2.  **Ascent Rate**: Between stops, **≤10 m/min**, slowing as you shallow (see [[en/50_Safety/Ascent Rate & Safety Stop Standards|Ascent Rate & Safety Stop Standards]]) [1]. Moving between stops is a controlled transfer, not a free ascent.
3.  **Time Completeness**: Run each stop to full duration. Your dive computer and timer each serve as independent verification. **Depth × Time × Gas—all three must be correct for the decompression to count.**
4.  **Body Position**: Horizontal trim during stops—the largest drag profile equals maximum stability in surge, and your head and feet remain at the same depth (standing vertical can introduce 1.5+ meters of pressure differential between head and feet, invalidating model assumptions). Hovering technique is detailed in [[en/30_Skills/In-Water Buoyancy & Horizontal Trim|In-Water Buoyancy & Horizontal Trim]].

---

## 🔀 Gas Switch Execution During Deco

The core gas switching SOP is covered in [[en/40_Gas_Management/Sidemount Gas Switching Procedures|Sidemount Gas Switching Procedures]]. Deco-specific additions:

*   **Switch only after reaching the target depth and establishing a stable hover**—switching while ascending is the classic scenario for grabbing the wrong regulator.
*   **NO-TOX Confirmation**: Visually read the MOD label on the cylinder $\rightarrow$ buddy cross-confirms $\rightarrow$ then switch. Switching to a high-oxygen deco gas at the wrong depth is the #1 pathway to CNS oxygen convulsions (thresholds in [[en/40_Gas_Management/Nitrox Basics & MOD Calculation|Nitrox Fundamentals & MOD Calculation]]) [1][2].
*   **Update your computer**: Forgetting to switch the active gas on your computer invalidates both the decompression schedule and CNS tracking.
*   **Common Deco Gases**: EAN50 (from 21m), 80% O₂ (from 9m), 100% O₂ (**6m, PO₂ 1.6, at rest only**) [2][3].

---

## 🫁 Oxygen Deco at 6 Meters: Discipline

*   **PO₂ 1.6 is valid only at rest**: Swimming against currents, pulling on lines, or shivering all increase CNS risk. In heavy surge, consider switching to 80% at 9m or extending stop times [2][3].
*   **Air/Nitrox Breaks**: Standard practice for extended O₂ deco is to breathe O₂ for 20–25 minutes, then switch to a lower-oxygen gas for 5 minutes to reduce the CNS accumulation slope. Whether to use breaks and at what intervals depends on your training agency and planning software settings [3].
*   **CNS Toxicity Warning Signs (VENTID)**: Vision disturbance, Ear ringing, Nausea, Twitching/Tingling, Irritability, Dizziness—if any symptom appears, immediately switch back to a lower-oxygen gas and alert your team (first aid: see [[en/50_Safety/DCS Symptom Recognition & Oxygen First Aid|DCS Symptom Recognition & Oxygen First Aid]]).
*   **6m Platforms**: If a horizontal bar or hang line is available, use it—conserving buoyancy bandwidth to focus on gas and time management. DSMB deployment and surface communication are covered in [[en/30_Skills/DSMB Deployment Techniques|DSMB Deployment Techniques]].

---

## 🧯 Contingency Management

| Scenario | Response |
| :--- | :--- |
| **Deco gas failure / lost cylinder** | Switch to back gas or buddy's supply. Continue using the "lost gas" contingency table from your planning software—this table must be pre-printed on your wet slate (see [[en/40_Gas_Management/Gas Planning & Safety Reserve Principles|Gas Planning & Safety Reserve Principles]]). |
| **Omitted Decompression (forced early exit)** | Asymptomatic: return to the water within **a few minutes** and complete the obligation (typically at a depth slightly deeper than the missed stop, with added time). Symptomatic: **do not return to the water**; initiate DCI first aid immediately [1]. |
| **Hypothermia / Shivering** | Shivering = reduced off-gassing efficiency + elevated CNS risk. Thermal budget is part of the decompression plan (see [[en/50_Safety/Hypothermia Prevention & Management|Hypothermia Prevention & Management]]). |
| **Computer Failure** | Execute decompression using your backup computer or wet slate tables. Dual computers are standard for decompression diving (see [[en/20_Equipment/Dive Computer & Transmitter Configuration|Dive Computer & Wireless Gas Integration]]). |

> 📋 **Assumptions & Limitations**: The depth/gas thresholds cited in this article (EAN50@21m, O₂@6m, PO₂ 1.6, breaks at 20–25/5 min) represent widely adopted industry conventions. **Always follow your training agency's standards and planning software outputs.** Decompression theory carries inherent uncertainty—execution discipline reduces variables but does not guarantee zero DCS.

---

## 📚 References

1. **Wikipedia** - *Decompression practice*: Stop execution, ascent rates (10 m/min), gas switching logic, open-circuit PO₂ 1.6 bar ≈ 6 msw ceiling, and omitted decompression protocols. [Link](https://en.wikipedia.org/wiki/Decompression_practice)
2. **Andy Davis (Scuba Tech Philippines)** - *The Difference Between Safety Stops & Decompression Stops*: Mandatory vs. discretionary stops, execution discipline, and planning rigor. [Link](https://scubatechphilippines.com/scuba_blog/difference-safety-stops-decompression-stop-scuba-diving/)
3. **Outuro** - *Demystifying Advanced Technical Decompression Procedures*: Common deco gas combinations (50%/80%/100%), oxygen window concepts, and air break protocols. [Link](http://outuro.com/advanced-technical-scuba-diving-decompression-procedures/)

> ⚠️ Note on Citations: Source [3] is an educational tech diving blog; specific air break intervals vary by agency (GUE, TDI, IANTD). This article presents the common range only.
