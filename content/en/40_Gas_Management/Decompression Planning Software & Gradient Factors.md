---
title: Decompression Planning Software & Gradient Factors
tags:
  - sidemount/gas-management
  - status/completed
---

# Decompression Planning Software & Gradient Factors (Deco Planning Software & Gradient Factors)

Every decompression dive in technical sidemount must first be modeled on planning software to generate a dive profile (Runtime Table), which is then verified against active dive computers. This article introduces decompression algorithms, the meaning of Gradient Factors (GF), and compares mainstream planning software.

---

## 🧠 Algorithmic Fundamentals

### Bühlmann ZHL-16
*   The dissolved gas model developed by Swiss physician Dr. Albert Bühlmann. The model simplifies the human body into **16 theoretical tissue compartments**, tracking nitrogen and helium absorption and elimination separately based on unique half-times [1][2].
*   Each compartment has a maximum tolerable overpressure limit known as the "M-value." Decompression stops are triggered as compartments approach their respective M-values during ascent.
*   The standard modern version is **ZHL-16C** (with modified M-value parameters), which is the default algorithm in the vast majority of technical dive computers (Shearwater, Garmin, etc.) and desktop planning tools [1][2].

### Gradient Factors (GF)
*   Introduced in the mid-1990s by Erik Baker, this method adjusts the conservatism of the Bühlmann model by scaling down the M-value using two percentages: **GF Lo / GF Hi** [4].
    *   **GF Lo**: The percentage of the M-value permitted at the first decompression stop. (A lower value $\rightarrow$ a deeper first stop) [4].
    *   **GF Hi**: The maximum percentage of the M-value permitted upon surfacing. (A lower value $\rightarrow$ longer shallow stops, increasing conservatism) [4].
    *   The dive computer draws a straight line between these two points to calculate the intermediate ascent slope [4].
*   *Example*: GF 50/80 means the first stop is calculated at 50% of the M-value margin, and surfacing is limited to 80%.
*   Common settings for open-circuit technical diving range from **GF 30–50 / 70–85**. Choice of parameters should be based on DCS probability studies and individual risk tolerance rather than copying other divers [3][5].

---

## 💻 Decompression Planning Software Comparison

| Software | Platform | Algorithm | Cost | Key Features |
| :--- | :--- | :--- | :--- | :--- |
| **Subsurface** | Win / Mac / Linux / Mobile | ZHL-16 + GF, VPM-B | **Free & Open Source** | Integrated logbook and planner; supports importing data from most dive computers [1]. |
| **MultiDeco** | Win / Mac / iOS / Android | ZHL-16B/C + GF, VPM-B, VPM-B/E | Paid Subscription | Parallel comparison of multiple algorithms, CCR simulation, multi-gas runtime calculations [2]. |
| **Shearwater Cloud** | Mobile / Desktop | ZHL-16C + GF | Free | Matches Shearwater Perdix/Petrel/Teric configurations exactly; excellent for verification. |

> 📌 **Standard Practice**: **Ensure the algorithm and GF settings in your planning software match your active dive computer exactly**. Otherwise, your planned runtime table and real-time computer readings will systematically diverge, invalidating your backup plans.

---

## 📋 Technical Sidemount Decompression Planning Workflow

1.  **Inputs**: Planned depth, bottom time, gases (bottom gas + decompression gas O₂%/He%), RMVs (both normal and emergency rates; see [[en/40_Gas_Management/Gas Consumption Rate (SAC & RMV) Calculation|Gas Consumption Rate (SAC & RMV) Calculation]]), and GF parameters.
2.  **Verify Outputs**: Total runtime, decompression stop depths and times, gas volumes needed for each cylinder vs. actual volumes carried (including safety reserves; see [[en/40_Gas_Management/Gas Planning & Safety Reserve Principles|Gas Planning & Safety Reserve Principles]]), and CNS%/OTU exposure (see [[en/40_Gas_Management/Oxygen Exposure & Nitrogen Narcosis Management|Oxygen Exposure & Nitrogen Narcosis Management]]).
3.  **Contingency Profiles**: Calculate emergency profiles (e.g., "+5 meters / +5 minutes" overruns and Lost Gas scenarios) and write them onto wet notes carried on the dive.
4.  **Computer Verification**: Ensure computer active gas lists and GF settings match the plan before splashing.

> 📋 **Notes & Assumptions**: Decompression models are **statistical approximations, not physiological guarantees**. Decompression Sickness (DCS) can occur even when diving strictly within a model's limits. Hydration, fatigue, body temperature, and personal physiological traits (like a PFO) are not factored into decompression algorithms. Runtimes are planning tools, not guarantees of safety (for DCS protocols, see [[en/50_Safety/DCS Symptom Recognition & Oxygen First Aid|DCS Symptom Recognition & Oxygen First Aid]]).

---

## 📚 References

1. **Subsurface Portal** - *Subsurface Dive Planner User Manual*: Open-source logbook and planner utilizing ZHL-16+GF and VPM-B models. [Link](https://subsurface-divelog.org/documentation/)
2. **HHS Software** - *MultiDeco: ZHL-GF & VPM-B dive decompression software*: Developer details for MultiDeco algorithm implementations and multi-gas CCR planning. [Link](https://www.hhssoftware.com/multideco/)
3. **Andy Davis (Scuba Tech Philippines)** - *A Logical Application of Gradient Factors for OC Tech Divers*: Technical analysis of GF Lo/Hi selection criteria and common setups. [Link](https://scubatechphilippines.com/scuba_blog/gradient-factors-application-use-settings-open-circuit-tech/)
4. **DAN (Divers Alert Network) Alert Diver** - *Gradient Factors*: Official explanation of Erik Baker's GF method—how GF Lo dictates deep stops and GF Hi determines surfacing safety margins. [Link](https://dan.org/alert-diver/article/gradient-factors/)
5. **The Theoretical Diver** - *Setting Gradient Factors based on published probability of DCS*: Quantitative analysis of GF settings backed by published DCS database frequencies. [Link](https://thetheoreticaldiver.org/wordpress/index.php/2019/06/16/setting-gradient-factors-based-on-published-probability-of-dcs/)
