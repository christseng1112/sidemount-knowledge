---
title: Oxygen Exposure & Nitrogen Narcosis Management
tags:
  - sidemount/gas-management
  - status/completed
---

# Oxygen Exposure & Nitrogen Narcosis Management (Oxygen Exposure & Narcosis: CNS / OTU / END)

Technical sidemount diving frequently involves using enriched decompression gases (EAN50, 100% O₂) and deep trimix gas mixtures. While this site covers MOD and gas switching elsewhere, **quantifying oxygen toxicity risk (CNS% / OTU) and managing equivalent narcotic depth (END)** are essential elements of deep and decompression dive planning. This article addresses those critical parameters.

> ⚠️ **Safety Notice**: The following parameters are derived from industry standards (NOAA Diving Manual, etc.) and are intended for review by certified mix/decompression divers. Always coordinate your dive planning with your active dive computer, planning software, and agency standards; this article does not replace training.

---

## 🫁 1. Oxygen Partial Pressure (PO₂) & Oxygen Toxicity

The risk of oxygen toxicity is determined by the **partial pressure** (PO₂ = FO₂ × Ambient Pressure ATA) of the breathing gas rather than the gas percentage itself:

| Hazard | Physiological Mechanism | Critical Thresholds |
| :--- | :--- | :--- |
| **Hypoxia** | Low PO₂ leading to unconsciousness | PO₂ **< 0.16–0.18 ata** (critical during surface checks with high-helium Trimix). |
| **CNS Oxygen Toxicity (Acute)** | High PO₂ triggering convulsions and drowning, often without warning signs | Working limit: **1.4 ata**; Resting decompression limit: **1.6 ata**. |
| **Pulmonary Oxygen Toxicity (Chronic)** | Extended exposure to elevated PO₂ causing lung irritation and capacity drop | Managed via cumulative **OTU / UPTD** tracking. |

---

## 📐 2. Maximum Operating Depth (MOD) Calculation

$$\text{MOD (m)} = \left(\frac{PO_2\text{ Limit}}{FO_2} - 1\right) \times 10$$

| Gas | FO₂ | MOD @ PO₂ 1.4 | MOD @ ppO₂ 1.6 |
| :--- | :--- | :--- | :--- |
| Air | 0.21 | 56.7 m | 66.2 m |
| EAN32 | 0.32 | 33.8 m | 40.0 m |
| EAN50 (Deco Gas) | 0.50 | 18.0 m | 22.0 m |
| 100% O₂ (Deco Gas) | 1.00 | 4.0 m | **6.0 m** |

> *Standard Practice*: Plan the working bottom phase at **PO₂ ≤ 1.4 ata**. Decompression stops can be conducted at **PO₂ up to 1.6 ata** due to minimal physical exertion (see [[en/60_Advanced/Decompression Stop Practice & Oxygen Deco|Decompression Stop Practice & Oxygen Deco]]). The standard switch depth for EAN50 is 21–22 meters (see [[en/40_Gas_Management/Sidemount Gas Switching Procedures|Sidemount Gas Switching Procedures]]).

---

## ⏱️ 3. The CNS% Clock (Acute Oxygen Toxicity Tracking)

The CNS% clock measures cumulative exposure by expressing dive segments at a specific PO₂ as a percentage of the single-exposure limit. The sum of all segments **must remain under 100%** (most plans target $\le 80\%$).

**NOAA Oxygen Exposure Limits (Abridged):**

| PO₂ (ata) | Single Exposure Limit (min) | 24-Hour Limit (min) |
| :--- | :--- | :--- |
| 1.6 | 45 | 150 |
| 1.5 | 120 | 180 |
| 1.4 | 150 | 180 |
| 1.3 | 180 | 210 |
| 1.2 | 210 | 240 |
| 1.1 | 240 | 270 |
| 1.0 | 300 | 300 |

*Example*: Decompressing on EAN50 at 21 m (PO₂ ≈ 1.55) for 12 minutes consumes approximately 10% of your single-exposure limit (120 minutes) of the CNS clock. Multi-gas plans must sum the CNS% of all segments.

> 🆕 **2025 Revision (NOAA Consensus Workshop)**: The table above reflects the classic 1991 NOAA standards, which remain the default in most dive computers. Following a March 2025 NOAA consensus workshop, Hoyt, Murphy, Pollock et al. published revised guidelines in *Diving and Hyperbaric Medicine* (2025-09). The revision **applies only to PO₂ at 1.3 atm**, extending the working single-exposure limit from 180 minutes **to 240 minutes** (plus an additional 240 minutes of resting decompression). Limits for **PO₂ < 1.3 or > 1.3 remain unchanged** [5].

---

## 🧪 4. OTU / UPTD (Pulmonary Toxicity Tracking)

*   **OTU (Oxygen Toxicity Unit)** quantifies cumulative lung stress when PO₂ exceeds 0.5 ata.
*   **Safety Limits**: A maximum of **850 OTU for a single dive**, and an average of **$\le 300$ OTU per day** for multi-day technical series [3].
*   While recreational and single technical dives rarely approach these limits, tracking OTUs is critical for **multi-day cave exploration or deep decompression series** (most planning tools calculate this automatically).

---

## 🌫️ 5. Nitrogen Narcosis & Equivalent Narcotic Depth (END)

Increasing depth increases the narcotic effect of nitrogen (and oxygen), causing impaired judgment and coordination (narcosis). Technical divers manage this risk via **Equivalent Narcotic Depth (END)**, using helium (Trimix) to reduce the narcotic gas fraction.

*   **Standard Ceiling**: Keep your target END **$\le 30 \text{ meters}$** (some agencies allow up to 40m).
*   **Trimix END Formula** (treating helium as non-narcotic, and oxygen/nitrogen as narcotic):

$$\text{END (m)} = \big[(D + 10) \times (1 - F_{He})\big] - 10$$

*Example*: Diving to 60m using Tx 18/45 ($F_{He} = 0.45$): $END = (70 \times 0.55) - 10 = \mathbf{28.5 \text{ meters}}$, which sits safely within the 30m ceiling.
*   **Air & Nitrox**: Since $F_{He} = 0$, END equals actual depth. Nitrox only manages MOD; **it does not reduce narcosis**.

---

## ✅ Planning Checklist

1. Verify bottom gas PO₂ $\le 1.4$ and deco gas PO₂ $\le 1.6$, calculating respective MODs.
2. Ensure cumulative CNS% remains $\le 100\%$ (target $\le 80\%$).
3. Monitor daily OTUs for multi-day technical series.
4. Keep END $\le 30\text{m}$ for deep dives, introducing helium as required.
5. Cross-verify all calculations against your dive computer and planning software.

---

## 📚 References

1. **NOAA OMAO** - *Inert Gas Narcosis and O₂ Toxicity* (PDF): NOAA Diving Manual CNS limits and general guidelines for narcosis and oxygen management. [Link](https://www.omao.noaa.gov/sites/default/files/documents/Inert%20Gas%20Narcosis%20and%20O2%20Toxicity_slides121316.pdf)
2. **DAN (Divers Alert Network)** - *Oxygen Toxicity*: Physiological mechanisms of CNS toxicity (convulsions, VENTID signs) and pulmonary exposure risks. [Link](https://dan.org/health-medicine/health-resources/diseases-conditions/oxygen-toxicity/)
3. **TDI (Technical Diving International)** - *Decompression Procedures Diver Course*: Curriculum standards for CNS clock calculation, OTUs, and END limits. [Link](https://www.tdisdi.com/tdi/get-certified/decompression-procedures-diver/)
4. **Shearwater Research** - *Shearwater and the CNS Oxygen Clock*: Dive computer real-time CNS tracking using NOAA lookup tables and half-life recovery models. [Link](https://shearwater.com/blogs/community/shearwater-and-the-cns-oxygen-clock)
5. **Hoyt, Murphy, Pollock et al.** - *Revised guideline for central nervous system oxygen toxicity exposure limits when using an inspired PO₂ of 1.3 atmospheres* (DHM 2025-09): Documenting the consensus update to increase the single 1.3 atm exposure limit. [Link](https://pmc.ncbi.nlm.nih.gov/articles/PMC12500339/)
