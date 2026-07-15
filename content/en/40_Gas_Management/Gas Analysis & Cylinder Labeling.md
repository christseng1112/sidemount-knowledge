---
title: Gas Analysis & Cylinder Labeling
tags:
  - sidemount/gas-management
  - status/completed
---

# Gas Analysis & Cylinder Labeling (Gas Analysis & Cylinder Labeling)

"**If you have not personally analyzed the gas, it is not your gas.**" Breathing the wrong gas mixture (such as breathing a high-oxygen mix too deep, or a hypoxic mix at the surface) is one of the most fatal categories of technical diving accidents. The line of defense has only two parts: **analyzing the gas when you receive the cylinder** and **checking the label before splashing and during gas switches**. This article summarizes the O₂ analyzer SOP and cylinder labeling standards.

---

## 🔬 Oxygen Analyzer Standard Operating Procedure (SOP) [1][2]

1.  **Warm Up & Stabilization**: Turn on the analyzer and wait for the reading to stabilize (electrochemical sensors require a brief warm-up).
2.  **Calibrate**: Calibrate the analyzer using **ambient air (20.9%)** according to the manufacturer's instructions. **Calibrate before every testing session**. Recalibrate if the device is turned off, moved to a different altitude, or if temperature and humidity shift significantly [2].
3.  **Analyze Cylinder**: Attach the sensor to the cylinder valve or flow limiter. **Slowly cracked open the valve to establish a gentle, steady flow**, and wait for the reading to stabilize.
4.  **Record O₂ Fraction**: Write down the measured O₂%.
5.  **Analyze Every Single Cylinder**: **Never skip a tank**—cylinders filled at the same station on the same day can still vary due to residual gas, filling sequence, or top-up pressure differences [2].
6.  **Calculate MOD & Label**: Calculate the MOD based on the actual measured O₂% (not the requested nominal value). Fill out a tape label with the O₂%, MOD, analysis date, and your initials [2].

> 📌 **MOD Formula (Metric)**: $MOD(m) = \left(\frac{PO_2\,limit}{FO_2} - 1\right) \times 10$. The physiological basis for PO₂ limits (1.4 bar working / 1.6 bar deco) is detailed in [[en/40_Gas_Management/Oxygen Exposure & Nitrogen Narcosis Management|Oxygen Exposure & Nitrogen Narcosis Management]].

> 📋 **Sensor Lifespan**: Electrochemical O₂ sensors are consumables with a typical lifespan of 1–3 years. If the sensor drifts during calibration or responds sluggishly, replace it. Maintain the analyzer unit itself (see [[en/70_Resources/Sidemount Gear Maintenance & Care Guide|Sidemount Gear Maintenance & Care Guide]]).

---

## 🏷️ Cylinder Labeling Standards (WKPP / DIR Standard) [3]

| Label Type | Placement | Specifications |
| :--- | :--- | :--- |
| **Large MOD Numbers** | Horizontal on both sides of the cylinder wall | Large block numbers approximately 3 inches (7.6 cm) high, easily readable by teammates [3]. |
| **MOD Cylinder Bottom** | Bottom dome of the cylinder | Allows team members behind you to identify your cylinder's MOD [3]. |
| **Analysis Tape** | Near the cylinder shoulder/neck | Shows actual measured O₂% (and He% if Trimix, e.g., "18/45"), date of analysis, and analyzer's initials [3]. |
| **Owner Name** | Cylinder wall | Identifies ownership in a multi-cylinder team pile [3]. |
| **Pure Oxygen Special Rule** | Cylinder wall | Marked as **"20" with "OXYGEN" added** (under imperial standards, to prevent "100" from being misread as "70" or "120"); under metric standards, it is marked as **"6"** (for 6 meters) [3]. |
| **Clean Cylinder Profile** | Entire cylinder | Strip off all old, irrelevant labels to prevent read errors [3]. |

> ⚠️ **Metric vs. Imperial Coordination**: DIR standards originating in the US utilize imperial units (e.g., EAN50 is labeled as MOD "70" feet). Teams diving in metric environments should consistently label in **meters** (EAN50 $\rightarrow$ **"21"**, O₂ $\rightarrow$ **"6"**). **Pre-dive briefings must verify that the team is using the same units**; mixing units is far more dangerous than not labeling.

---

## 🔁 Closing the Loop: Verification and Switching

Cylinder labeling is validated during gas switches. The standard technical gas switch protocol (NO TOX validation: Read MOD label $\rightarrow$ Trace regulator hose to the first stage $\rightarrow$ Buddy cross-check) is detailed in [[en/40_Gas_Management/Sidemount Gas Switching Procedures|Sidemount Gas Switching Procedures]] and [[en/60_Advanced/Multi-Cylinder & Decompression Stage Configuration|Technical Sidemount Setup & Stage Rigging]]. The standard WKPP protocol requires: identifying the correct MOD cylinder $\rightarrow$ deploying the second stage $\rightarrow$ opening the valve to verify pressure drop on the SPG $\rightarrow$ obtaining partner confirmation before inserting the regulator mouthpiece [3].

---

## 📚 References

1. **NRC International** - *Analyze Nitrox Mix: How to Verify Oxygen Content for Safe Diving*: Analyzer workflows and the safety necessity of individual tank analysis. [Link](https://nrc-international.com/blogs/guide/analyze-nitrox-mix)
2. **Divesoft** - *A Diver's Guide to Analyzing Nitrox the Right Way*: Manufacturer SOPs covering calibration, flow management, and label data (O₂%, MOD, date, initials). [Link](https://www.divesoft.com/en/blog/a-divers-guide-to-analyzing-nitrox-the-right-way)
3. **WKPP (Woodville Karst Plain Project)** - *Cylinder Marking & Gas Switches*: Guidelines for 3-inch MOD labels, analysis tape placement, oxygen labeling rules, and switch verification protocols. [Link](https://wkpp.org/standards-procedures/cylinder-marking-gas-switch/)
