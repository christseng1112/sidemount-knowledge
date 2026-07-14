---
title: Sidemount CCR (Closed Circuit Rebreather) Integration Concepts
tags:
  - sidemount/advanced
  - status/completed
---

# Sidemount CCR (Closed Circuit Rebreather) Integration Concepts (Sidemount CCR Integration)

All other articles in this knowledge base focus on **Open Circuit (OC)** sidemount. When diving extends into long-duration, deep decompression, or long-range cave traversals, **Closed Circuit Rebreathers (CCR)** become the dominant platform—recycling exhaled gas, scrubbing CO₂ with a chemical absorbent, and electronically injecting oxygen to maintain a constant PO₂, achieving gas efficiency far beyond OC. Sidemount and CCR integration follows two distinct paths with fundamentally different logic, which this article clarifies.

> ⚠️ **Safety Notice**: CCR is a high-complexity life support system. **Formal CCR training from the manufacturer or a recognized agency is mandatory** (including sidemount CCR or bailout-specific courses). This article serves as a conceptual overview only. For CCR-related CO₂/PO₂ physiology risks, see [[en/40_Gas_Management/CO2 Retention & Work of Breathing|CO₂ Retention & Work of Breathing]] and [[en/40_Gas_Management/Oxygen Exposure & Nitrogen Narcosis Management|Oxygen Exposure & Nitrogen Narcosis Management]].

---

## 🔀 Two Integration Paths (Clarify Which One First)

| Path | Primary Breathing Source | Sidemount Role | Typical Scenario |
| :--- | :--- | :--- | :--- |
| **A. Sidemount CCR** | **The CCR unit itself is mounted on the diver's side** (e.g., Divesoft Liberty Sidemount) | CCR unit is sidemount-configured; back is clear | Ultra-narrow caves: restrictions too tight even for backmount CCR [1] |
| **B. Backmount CCR + Sidemount Bailout** | Backmount CCR | **Sidemount cylinders serve as bailout (emergency OC backup) / diluent supply** | Standard bailout configuration for most technical CCR diving [2][3] |

> 📌 Both use "sidemount," but **Path A mounts the rebreather on the side; Path B mounts bailout cylinders on the side**. Always clarify which path before discussing configuration.

---

## 🧩 Path A: Sidemount CCR Configuration

Using the Divesoft **Liberty Sidemount** as the representative unit [1]:

1.  **Self-Contained but Not a BC**: The titanium frame features buoyancy cutouts and is designed to achieve **neutral buoyancy with a full gas load (2×2L steel/aluminum cylinders)**, eliminating the need for external cylinders. However, **the rebreather itself is not a buoyancy compensator**—a separate sidemount harness and wing are still required (see [[en/20_Equipment/Sidemount Harness & BCD Selection|Sidemount Harness & BCD Selection]]) [1].
2.  **Counterlung Positioning Determines WOB**: The counterlung must be positioned flush against the chest and angled approximately along the body's longitudinal axis. **Correct positioning is essential for acceptable Work of Breathing (WOB)**; incorrect placement makes inhalation and exhalation laborious in certain body positions (WOB and CO₂ relationship: see [[en/40_Gas_Management/CO2 Retention & Work of Breathing|CO₂ Retention & Work of Breathing]]) [1].
3.  **Mouthpiece Discipline (Life or Death)**: Any mouthpiece (MPV/DSV) **not actively being breathed must be closed**. An open, unattended mouthpiece floods the breathing loop and saturates the scrubber, causing CO₂ breakthrough. This is fundamentally different muscle memory from OC sidemount regulator switching [1].
4.  **Active Venting During Ascent**: During ascent, gas expands simultaneously in the breathing loop, counterlungs, wing, and drysuit. **Active venting from all gas spaces** is required to control ascent rate (see [[en/50_Safety/Ascent Rate & Safety Stop Standards|Ascent Rate & Safety Stop Standards]]) [1][3].

---

## 🛟 Path B: Backmount CCR + Sidemount Bailout

Sidemount's independent dual-cylinder architecture is naturally suited for CCR bailout (emergency OC) and diluent supply, providing a clean, symmetrical, and manageable system [2][3]:

### 1. Gas Routing & Hose Configuration
*   **Left Diluent / Bailout Cylinder**:
    *   **Gas & Function**: Filled with diluent suitable for the planned depth (Air, Nitrox, or Trimix). Also serves as primary OC bailout gas.
    *   **Hose Routing**: A medium-pressure hose runs from the left first stage across the chest to the right side, terminating in a **QC6 (or Swagelok) quick-disconnect female fitting**. This connects to the CCR's **ADV (Automatic Diluent Valve)** or manual diluent addition valve (MAV-D), allowing in-water connection/disconnection [2].
*   **Right Deco / Bailout Cylinder**:
    *   **Gas & Function**: Filled with high-oxygen deco gas (e.g., EAN50 or 100% O₂) for decompression-phase OC bailout.
    *   **Hose Routing**: A medium-pressure hose from the right first stage terminates in a QC6 quick-disconnect, connectable to the CCR's manual oxygen addition valve (MAV-O) or as a high-oxygen BOV supply.
*   **BOV (Bailout Valve) Connection**: If the CCR mouthpiece is a BOV (integrated OC/CC switch valve), its supply hose is typically connected to the left diluent cylinder, ensuring a single lever flip provides breathable diluent [2][3].

### 2. Emergency Bailout SOP
When the CCR experiences PO₂ anomalies (runaway hyperoxia or hypoxia), scrubber failure causing CO₂ accumulation, or an unexpected system crash, **execute the following bailout steps immediately and unconditionally**:

```
Step 1: Switch to OC ──> Step 2: Stabilize breathing ──> Step 3: Signal team ──> Step 4: Manage loop & exit
Flip BOV lever to OC,       Confirm clear inhalation,      Signal "Bailout" (thumb up     Close unused DSV mouthpiece
or spit DSV and switch to   slow breathing rate, maintain   + palm tap on head) and       to prevent loop flooding,
sidemount bailout reg.      trim and buoyancy control.      establish physical contact.     begin OC ascent.
```

*   **Detailed Steps**:
    1.  **Switch to OC**: Immediately switch your gas supply to a safe open-circuit source. With a BOV, flip the lever from CC to OC. With a standard DSV, spit it out and switch to the left sidemount bailout second stage on your necklace.
    2.  **Stabilize**: OC gas immediately halts CO₂ or hypoxia. Maintain trim, control buoyancy, and slow your breathing rate.
    3.  **Signal Team**: Display the "Bailout" hand signal (thumb up + palm tap on head). Your buddy must approach and establish physical contact to assist with buoyancy and navigation.
    4.  **Loop Management**: If you spat out the DSV, **close its valve immediately**. An open DSV on an unattended loop floods the scrubber; water reacting with soda lime produces extremely dangerous **"Caustic Cocktails" (chemical burns)** [1][3].
    5.  **Exit**: Begin ascending on OC decompression tables. Monitor bailout cylinder SPGs. If a gas switch is needed (e.g., to right-side EAN50), follow [[en/40_Gas_Management/Sidemount Gas Switching Procedures|Sidemount Gas Switching Procedures]].

*   **Bailout Gas Planning**: Bailout gas must be calculated for a **full open-circuit swim-out**. Use high-workload RMV (e.g., 25–30 L/min) × depth × decompression time. Principles follow [[en/40_Gas_Management/Gas Planning & Safety Reserve Principles|Gas Planning & Safety Reserve Principles]].
*   **Bailout CCR for Deep Diving**: At depths exceeding 80m, a second sidemount CCR as bailout is more practical than carrying 4–5 OC deco cylinders, reducing drag and helium costs. This requires advanced specialized training [2][3].
*   **Multi-Cylinder Geometry**: Sidemount bailout and deco cylinder mounting follows left-side priority, layering, and long-hose clearance standards from [[en/60_Advanced/Multi-Cylinder & Decompression Stage Configuration|Multi-Cylinder & Decompression Stage Configuration]].

---

## ⚖️ Trim & Common Risks

1.  **Trim**: CCR loop gas volume remains relatively constant during a dive (unlike OC, which loses gas mass over time), but scrubber weight, cylinder material, and bailout cylinder buoyancy changes still affect trim. A full weight check is required (see [[en/20_Equipment/Steel vs. Aluminum Cylinder Buoyancy & Ballast Management|Steel vs. Aluminum Cylinder Buoyancy & Ballast Management]]).
2.  **The Three CCR Killers Remain Unchanged**: **Hypoxia/Hyperoxia (PO₂ failure), CO₂ breakthrough (scrubber exhaustion/loop flooding), and panic-driven mouthpiece errors**—sidemount configuration changes geometry, not these fundamental risks.
3.  **The True Motivation for Sidemount CCR**: It is not "safer"—it is about **passing through restrictions that backmount CCR cannot** or reducing drag on long traversals. Without this specific need, backmount CCR is typically simpler [1].

---

## 📚 References

1. **Divesoft (OEM Documentation)** - *CCR Liberty Sidemount Manual* (Rev. 2.17.6, 2025-03): Titanium frame neutral buoyancy, 2×2L cylinders, counterlung positioning at ~25° angle, mouthpiece closure discipline, and active ascent venting. [Link](https://www.divesoft.com/en/manuals/ccr-liberty-manual/ccr-liberty-sidemount-manual_en)
2. **TDI/SDI** - *Using a Bailout Rebreather*: Backmount CCR with sidemount bailout/diluent, QC6 connections to ADV/BOV, and bailout CCR logic for deep diving. [Link](https://www.tdisdi.com/tdi-diver-news/using-a-bailout-rebreather/)
3. **InDEPTH (GUE)** - *When Sidemount Becomes the Solution: Alternative Rebreather Configurations*: Sidemount CCR vs. backmount+sidemount bailout tradeoffs, restriction motivations, and ascent venting. [Link](https://indepthmag.com/alternative-rebreather-configurations/)
4. **Advanced Diver Magazine** - *CCR Sidemount Stage Configuration for Exploration* (Curt Bowen): Exploration-grade sidemount CCR and stage/bailout mounting practices. [Link](http://www.advanceddivermagazine.com/articles/ccrsidemount/ccrsidemount.html)

> ⚠️ Note on Citations: Sources [2] and [3] employ anti-scraping mechanisms (403); contents verified via search engine index.
