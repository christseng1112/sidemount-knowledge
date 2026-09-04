---
title: Safety Numbers Quick Reference
tags:
  - sidemount/resources
  - status/completed
---

# Safety Numbers Quick Reference

This vault's safety-critical numbers were scattered across six or seven notes, forcing the annual review to sweep the whole library. This page collects them onto one sheet — **every row links back to its authoritative note**. Look numbers up here before a trip; go back to the source note for the reasoning and the preconditions.

> ⚠️ **This page is a summary, not a source.** The source notes govern; where this page and a source note disagree, **the source note is correct**. When revising any safety number, **change the source note and this page together**, and record it in the [[00_MOCs/Changelog|Changelog]] (maintained in Chinese).
>
> 📅 **Next annual review: 2027-07** (against current DAN / UHMS / NOAA editions)

---

## 🫁 1. Oxygen Exposure

| Item | Value | Source note |
| :--- | :--- | :--- |
| **Working PO₂ limit** | **1.4 ata** | [[en/40_Gas_Management/Nitrox Basics & MOD Calculation\|Nitrox Basics & MOD Calculation]] |
| **Decompression / at-rest PO₂ limit** | **1.6 ata** | [[en/40_Gas_Management/Oxygen Exposure & Nitrogen Narcosis Management\|Oxygen Exposure & Nitrogen Narcosis Management]] |
| **Hypoxia danger threshold** | PO₂ **< 0.16–0.18** | [[en/40_Gas_Management/Oxygen Exposure & Nitrogen Narcosis Management\|Oxygen Exposure & Nitrogen Narcosis Management]] |
| **Total CNS% ceiling** | **≤ 100%** (plan to ≤ 80%) | [[en/40_Gas_Management/Oxygen Exposure & Nitrogen Narcosis Management\|Oxygen Exposure & Nitrogen Narcosis Management]] |
| **OTU, single dive** | about **850** | [[en/40_Gas_Management/Oxygen Exposure & Nitrogen Narcosis Management\|Oxygen Exposure & Nitrogen Narcosis Management]] |
| **OTU, multi-day daily average** | **≤ 300** | [[en/40_Gas_Management/Oxygen Exposure & Nitrogen Narcosis Management\|Oxygen Exposure & Nitrogen Narcosis Management]] |

### NOAA single-exposure oxygen limits [1]

| PO₂ (ata) | 1.6 | 1.5 | 1.4 | 1.3 | 1.2 | 1.1 | 1.0 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **Single exposure (min)** | 45 | 120 | 150 | 180 | 210 | 240 | 300 |
| **24-hour limit (min)** | 150 | 180 | 180 | 210 | 240 | 270 | 300 |

> 🆕 **2025 NOAA revision**: **only at PO₂ 1.3 ata** does the working single-exposure limit change, from 180 to **240 minutes**; all other PO₂ values are unchanged. Most computers and course materials still use the 1991 table. See [[en/40_Gas_Management/Oxygen Exposure & Nitrogen Narcosis Management|Oxygen Exposure & Nitrogen Narcosis Management]] [2].

---

## 🌫️ 2. Narcosis & Gas Density

| Item | Value | Source note |
| :--- | :--- | :--- |
| **Conservative END ceiling** | **≤ 30 m** (some agencies allow ≈ 40 m) | [[en/40_Gas_Management/Oxygen Exposure & Nitrogen Narcosis Management\|Oxygen Exposure & Nitrogen Narcosis Management]] |
| **Gas density, ideal limit** | **≤ 5.2 g/L** (about 31 m on air) | [[en/60_Advanced/Trimix Gas & Gas Density Planning\|Trimix Gas & Gas Density Planning]] |
| **Gas density, absolute limit** | **≤ 6.2 g/L** (about 39 m on air) | [[en/60_Advanced/Trimix Gas & Gas Density Planning\|Trimix Gas & Gas Density Planning]] |
| **Measured onset of dangerous CO₂ retention** | density **6.0 g/L** | [[en/40_Gas_Management/CO2 Retention & Work of Breathing\|CO2 Retention & Work of Breathing]] |

> 📌 **Density planning is stricter than END planning**: plan to ≤ 5.2 g/L and END is conservative automatically; the reverse does not hold. **Compute both and take the stricter.**

---

## 📐 3. Core Formulas (metric)

Ambient pressure $P(\text{ata}) = \dfrac{\text{depth (m)}}{10} + 1$

| Formula | Expression | Source note |
| :--- | :--- | :--- |
| **MOD** | $\left(\dfrac{PO_2\,\text{limit}}{FO_2} - 1\right) \times 10$ | [[en/40_Gas_Management/Nitrox Basics & MOD Calculation\|Nitrox Basics & MOD Calculation]] |
| **Best mix** | $FO_2 = \dfrac{PO_2\,\text{limit}}{\text{depth}/10 + 1}$ | [[en/40_Gas_Management/Nitrox Basics & MOD Calculation\|Nitrox Basics & MOD Calculation]] |
| **EAD** | $\left(\dfrac{FN_2}{0.79} \times \left(\dfrac{\text{depth}}{10}+1\right) - 1\right) \times 10$ | [[en/40_Gas_Management/Nitrox Basics & MOD Calculation\|Nitrox Basics & MOD Calculation]] |
| **END** | $\big[(D + 10) \times (1 - F_{He})\big] - 10$ | [[en/40_Gas_Management/Oxygen Exposure & Nitrogen Narcosis Management\|Oxygen Exposure & Nitrogen Narcosis Management]] |
| **SAC** | $\dfrac{\Delta P}{\text{time} \times \text{average ATA}}$ (bar/min) | [[en/40_Gas_Management/Gas Consumption Rate (SAC & RMV) Calculation\|Gas Consumption Rate (SAC & RMV)]] |
| **RMV** | $\text{SAC} \times \text{cylinder water capacity (L)}$ (L/min) | [[en/40_Gas_Management/Gas Consumption Rate (SAC & RMV) Calculation\|Gas Consumption Rate (SAC & RMV)]] |
| **Gas density @ 1 ata** | $F_{O_2}\times1.43 + F_{He}\times0.18 + F_{N_2}\times1.25$ (g/L) | [[en/60_Advanced/Trimix Gas & Gas Density Planning\|Trimix Gas & Gas Density Planning]] |

### MOD for common mixes

| Gas | FO₂ | MOD @ 1.4 | MOD @ 1.6 |
| :--- | :--- | :--- | :--- |
| Air | 0.21 | 56.7 m | 66.2 m |
| EAN32 | 0.32 | 33.8 m | 40.0 m |
| EAN50 | 0.50 | 18.0 m | 22.0 m |
| O₂ 100% | 1.00 | 4.0 m | **6.0 m** |

---

## ⬆️ 4. Ascent & Stops

| Item | Value | Source note |
| :--- | :--- | :--- |
| **General ascent rate** | **9–10 m/min** (30 ft/min) | [[en/50_Safety/Ascent Rate & Safety Stop Standards\|Ascent Rate & Safety Stop Standards]] |
| **Final ~10 m** | slow to **3–6 m/min** | [[en/50_Safety/Ascent Rate & Safety Stop Standards\|Ascent Rate & Safety Stop Standards]] |
| **Between decompression stops** | typically **3 m/min** | [[en/50_Safety/Ascent Rate & Safety Stop Standards\|Ascent Rate & Safety Stop Standards]] |
| **Safety stop** | **5 m × 3 minutes** (range 3–6 m) | [[en/50_Safety/Ascent Rate & Safety Stop Standards\|Ascent Rate & Safety Stop Standards]] |
| **CESA confined-water drill limits** | swim ≥ 9 m horizontally, speed ≤ 18 m/min | [[en/50_Safety/Controlled Emergency Swimming Ascent (CESA) & Last Resort Options\|CESA & Last Resort Options]] |

---

## 💨 5. Gas Management & Sidemount Switching

| Item | Value | Source note |
| :--- | :--- | :--- |
| **Cylinder rotation interval** | every **20–30 bar** | [[en/40_Gas_Management/Sidemount Gas Switching Procedures\|Sidemount Gas Switching Procedures]] |
| **Maximum permissible left/right differential** | **30–35 bar** (about 500 psi) | [[en/40_Gas_Management/Sidemount Gas Switching Procedures\|Sidemount Gas Switching Procedures]] |
| **Reserve principles** | rule of thirds; 1/6 differential rotation | [[en/40_Gas_Management/Gas Planning & Safety Reserve Principles\|Gas Planning & Safety Reserve Principles]] |
| **RMV basis for Rock Bottom** | **30–45 L/min** (emergency / panic) | [[en/40_Gas_Management/Gas Consumption Rate (SAC & RMV) Calculation\|Gas Consumption Rate (SAC & RMV)]] |

### RMV reference bands (for planning, not a personal measurement)

| State | RMV (L/min) |
| :--- | :--- |
| Very relaxed / static hover | 8 – 12 |
| Normal recreational swimming | 12 – 15 |
| Light work / technical diving | 15 – 20 |
| Heavy work / strong current / cold | 20 – 25 |
| **Emergency exit / panic (Rock Bottom basis)** | **30 – 45** |

> ⚠️ **Always compute Rock Bottom by hand using a high-workload RMV.** Never use a relaxed-state RMV, and never substitute the computer's GTR (it extrapolates from roughly the last two minutes and badly underestimates under stress). See [[en/20_Equipment/Dive Computer & Transmitter Configuration|Dive Computer & Transmitter Configuration]].

---

## 🚑 6. First Aid & Evacuation

| Item | Value / action | Source note |
| :--- | :--- | :--- |
| **DCI field treatment** | **100% oxygen, immediately and continuously** | [[en/50_Safety/DCS Symptom Recognition & Oxygen First Aid\|DCS Symptom Recognition & Oxygen First Aid]] |
| **Delivery** | demand valve, or **15 L/min** non-rebreather mask | [[en/50_Safety/DCS Symptom Recognition & Oxygen First Aid\|DCS Symptom Recognition & Oxygen First Aid]] |
| **When to stop oxygen** | when it runs out or help arrives — **not because symptoms improve** | [[en/50_Safety/DCS Symptom Recognition & Oxygen First Aid\|DCS Symptom Recognition & Oxygen First Aid]] |
| **Symptoms resolved** | **still contact DAN / a diving physician** | [[en/50_Safety/DCS Symptom Recognition & Oxygen First Aid\|DCS Symptom Recognition & Oxygen First Aid]] |

---

## ✈️ 7. Post-Dive Altitude Exposure

| Scenario | Minimum interval / threshold | Source note |
| :--- | :--- | :--- |
| **Fly after a single no-decompression dive** | **12 hours** | [[en/50_Safety/Flying After Diving & Altitude Exposure\|Flying After Diving & Altitude Exposure]] |
| **Fly after multiple dives / multiple days** | **18 hours** | [[en/50_Safety/Flying After Diving & Altitude Exposure\|Flying After Diving & Altitude Exposure]] |
| **Fly after decompression diving** | **substantially longer than 18 hours** | [[en/50_Safety/Flying After Diving & Altitude Exposure\|Flying After Diving & Altitude Exposure]] |
| **Applicable cabin altitude** | 610–2,438 m (2,000–8,000 ft) | [[en/50_Safety/Flying After Diving & Altitude Exposure\|Flying After Diving & Altitude Exposure]] |
| **Ascending above 610 m by road** | same 12 / 18 hour intervals | [[en/50_Safety/Flying After Diving & Altitude Exposure\|Flying After Diving & Altitude Exposure]] |
| **Altitude diving threshold** | above **300 m** requires altitude procedures | [[en/50_Safety/Flying After Diving & Altitude Exposure\|Flying After Diving & Altitude Exposure]] |
| **First dive after arriving at altitude** | wait **12 hours** | [[en/50_Safety/Flying After Diving & Altitude Exposure\|Flying After Diving & Altitude Exposure]] |

---

## 📏 8. Unit Conversions

| Conversion | Value |
| :--- | :--- |
| Pressure | 1 bar ≈ **14.5 psi** |
| Weight | 1 kg ≈ **2.2 lbs** |
| Depth → absolute pressure | $P(\text{ata}) = \text{depth}/10 + 1$ |
| AL80 water capacity | ≈ **11.1 L** |
| Air density @ 1 ata | ≈ 1.29 g/L (O₂ 1.43, N₂ 1.25, He 0.18) |

---

> 📋 **Assumptions & Limitations**
> *   This page carries **no derivations and no preconditions** — every value has a scope (gas type, workload, dry chamber vs immersion, agency differences). **Reading the table without the source note invites misuse.**
> *   A summary page has an inherent **drift risk**: change a source note without changing this page and two versions exist. That is this page's only maintenance cost; always update both.
> *   All values are **agency consensus or research ceilings**, not personal guarantees; cross-check real plans against your dive computer or decompression software, and defer to your agency's current standards.
> *   Full assumptions for the computed values (MOD, SAC/RMV, gas density) live in the "Assumptions & Limitations" box of each source note.

---

## 🔗 Related Notes

*   [[en/00_MOCs/Sidemount_Diving_MOC|🌊 Main MOC]]
*   [[en/70_Resources/Pre-Dive Checklists|Pre-Dive Checklists]]
*   [[en/70_Resources/Sidemount Glossary & English-Chinese Terms|Sidemount Glossary & English-Chinese Terms]]
*   [[en/50_Safety/Dive Accident Case Analysis & Human Factors|Dive Accident Case Analysis & Human Factors]]

---

## 📚 References

All values are consolidated from the source notes, each linked per row. The most frequently traced primary sources are listed below; full citations live at the end of each source note.

1. **NOAA OMAO (primary authority)** - *Inert Gas Narcosis and O₂ Toxicity* (official training slides, PDF): the NOAA Diving Manual's CNS single-exposure and 24-hour oxygen limit table and narcosis management principles. [Link](https://www.omao.noaa.gov/sites/default/files/documents/Inert%20Gas%20Narcosis%20and%20O2%20Toxicity_slides121316.pdf)
2. **Hoyt, Murphy, Pollock et al. (2025, primary authority)** - *Revised guideline for central nervous system oxygen toxicity exposure limits when using an inspired PO₂ of 1.3 atmospheres*, Diving and Hyperbaric Medicine, 2025-09: the post-2025-NOAA-workshop revision raising the 1.3 ata working single-exposure limit from 180 to 240 minutes. [Link](https://pmc.ncbi.nlm.nih.gov/articles/PMC12500339/)
3. **DAN (Divers Alert Network), Alert Diver** - *Performance Under Pressure*: the Anthony and Mitchell gas density work — 5.2 g/L ideal, 6.2 g/L absolute limit, dangerous CO₂ retention in both open circuit and CCR divers at 6.0 g/L. [Link](https://dan.org/alert-diver/article/performance-under-pressure/)
4. **DAN (Divers Alert Network), Alert Diver** - *Ascent Rates*: the US Navy/NOAA 30 ft/min (about 9 m/min) rate, recreational agency ranges, shallow-zone pressure change rates, and the benefit of safety stops. [Link](https://dan.org/alert-diver/article/ascent-rates/)
5. **DAN (Divers Alert Network)** - *Decompression Illness: What Is It and What Is The Treatment?*: the DCI field SOP (100% O₂, do not stop because symptoms improve, contact DAN even after symptoms resolve) and recompression as the only definitive treatment. [Link](https://dan.org/health-medicine/health-resources/diseases-conditions/decompression-illness-what-is-it-and-what-is-the-treatment/)
6. **DAN (Divers Alert Network)** - *Flying After Diving*: the 2002 DAN/UHMS workshop consensus of 12 / 18 / "substantially longer than 18" hour intervals and the 610–2,438 m cabin altitude precondition. [Link](https://dan.org/health-medicine/health-resources/diseases-conditions/flying-after-diving/)
7. **Sidemount Book (Rob Neto)** - *Sidemount Gas Management*: sidemount cylinder rotation intervals (every 20–30 bar / 300–500 psi, or the 1/6 method), twin-cylinder reserves and balance. [Link](https://sidemountbook.com/articles/sidemount-gas-management/)
