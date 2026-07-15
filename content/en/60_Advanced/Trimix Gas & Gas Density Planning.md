---
title: Trimix Gas & Gas Density Planning
tags:
  - sidemount/advanced
  - status/completed
---

# Trimix Gas & Gas Density Planning (Trimix & Gas Density Planning)

Beyond the practical limits of Air and Nitrox, technical sidemount enters the realm of **Trimix (Oxygen + Helium + Nitrogen three-component gas)**. The rationale for adding helium historically focused on narcosis (END), but modern research has established a second, harder constraint: **gas density**. This article covers Trimix composition logic, gas density planning standards, and sidemount-specific practices.

---

## 🧪 Why Add Helium?

1.  **Reduce Narcosis**: Helium has virtually zero narcotic potency. Replacing nitrogen with helium controls the Equivalent Narcotic Depth (END) to a target value (END calculation: see [[en/40_Gas_Management/Oxygen Exposure & Nitrogen Narcosis Management|Oxygen Exposure & Nitrogen Narcosis Management]]).
2.  **Reduce Gas Density**: Helium's density is only 0.18 g/L (compared to nitrogen at 1.25 g/L and oxygen at 1.43 g/L, at 1 ATA)—this is the primary driver of modern gas planning [1][2].
3.  **Naming Convention**: Trimix 21/35 = 21% O₂ / 35% He / balance N₂. Hypoxic trimix (O₂ < 18%) is used at 60m+ and is **not breathable at the surface or in shallow water**.

---

## ⚖️ Gas Density Planning (Anthony & Mitchell Research)

*   **Ideal ceiling: 5.2 g/L; Absolute ceiling: 6.2 g/L** [1]. For air, these correspond to approximately **31 m** and **39 m** (102/128 fsw) respectively [1].
*   Research demonstrates that at a breathing gas density of **6.0 g/L**, both open-circuit and CCR divers exhibit dangerous levels of **CO₂ retention** [1]. High-density gas increases the Work of Breathing (WOB), reduces ventilation efficiency, and causes insidious CO₂ accumulation leading to incapacitation without warning [1][2].
*   **Density planning is stricter than END planning**: A mix designed to meet ≤5.2 g/L density automatically satisfies conservative END targets. Conversely, a mix that "passes" END can still exceed the density ceiling [2]. **Calculate both; use whichever is more restrictive.**

> 📌 **Quick Density Calculation**: $\rho_{depth} = \rho_{1ATA} \times P_{ATA}$, where $\rho_{1ATA} = F_{O_2}\times1.43 + F_{He}\times0.18 + F_{N_2}\times1.25$ (g/L). Example: Trimix 21/35 at 45 m (5.5 ATA): $(0.21\times1.43+0.35\times0.18+0.44\times1.25)\times5.5 \approx 5.0$ g/L ✅.

> 📋 **Assumptions & Limitations**: Ideal gas approximation; actual fill percentages have ±1–2% tolerance. **Always calculate using analyzer-verified values** (see [[en/40_Gas_Management/Gas Analysis & Cylinder Labeling|Gas Analysis & Cylinder Labeling Practices]]) and cross-check with planning software (see [[en/40_Gas_Management/Decompression Planning Software & Gradient Factors|Decompression Planning Software & Gradient Factors]]).

---

## 🛠 Sidemount Trimix Practices

1.  **Both Primary Cylinders Use the Same Mix**: Left and right must be filled with **identical bottom gas** and each independently analyzed—sidemount gas switching assumes both cylinders are interchangeable.
2.  **Labeling**: Mark O₂/He (e.g., "18/45") on the cylinder neck analysis tag + MOD in large numerals on the cylinder body (standards in [[en/40_Gas_Management/Gas Analysis & Cylinder Labeling|Gas Analysis & Cylinder Labeling Practices]]) [3].
3.  **Deco Cylinder Mounting**: Trimix dives typically carry 1–2 deco cylinders (EAN50, O₂). Mounting and switching procedures are covered in [[en/60_Advanced/Multi-Cylinder & Decompression Stage Configuration|Multi-Cylinder & Decompression Stage Configuration]].
4.  **The Cost of Helium**: Helium is expensive and accelerates tissue gas exchange (making decompression plans more time-sensitive). Runtime and contingency tables follow the workflow in [[en/40_Gas_Management/Decompression Planning Software & Gradient Factors|Decompression Planning Software & Gradient Factors]].
5.  **Certification Path**: TDI Trimix / IANTD Normoxic Trimix and above (typically requires Advanced Nitrox + Deco Procedures first). Sidemount-specific course comparisons are in [[en/70_Resources/Sidemount Certification Systems & Course Comparison|Sidemount Certification Systems & Course Comparison]].

---

## 📚 References

1. **DAN Alert Diver** - *Performance Under Pressure*: Gavin Anthony & Simon Mitchell's gas density research—ideal 5.2 g/L / absolute 6.2 g/L ceiling, CO₂ retention at 6.0 g/L in both OC and CCR. [Link](https://dan.org/alert-diver/article/performance-under-pressure/)
2. **Divesoft** - *The 5.2 g/L Rule: Why Gas Density May Be the Most Important Number in Deep Diving*: Density → WOB → CO₂ retention pathway; "density planning automatically makes END conservative, but not vice versa." [Link](https://www.divesoft.com/en/blog/the-5-2-g/l-rule-why-gas-density-may-be-the-most-important-number-in-deep-diving)
3. **Andy Davis (Scuba Tech Philippines)** - *Why Do Divers Use Helium?*: Helium's dual role in narcosis reduction and density management, Trimix naming conventions, and use cases. [Link](https://scubatechphilippines.com/scuba_blog/why-do-deep-divers-use-helium/)
