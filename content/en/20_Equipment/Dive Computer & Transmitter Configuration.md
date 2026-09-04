---
title: Dive Computer & Transmitter Configuration
tags:
  - sidemount/equipment
  - status/completed
---

# Dive Computer & Transmitter Configuration (Dive Computers & Wireless Air Integration)

Sidemount divers must monitor pressure in **two independent cylinders**. The traditional approach uses a mechanical submersible pressure gauge (SPG) on each cylinder; wireless air integration (AI) uses transmitters to display both cylinder pressures on a single dive computer screen, simplifying gas tracking and raising situational awareness. This guide outlines AI configurations, compatible models, and limitations in sidemount diving.

---

## 📡 Mounting AI Transmitters in Sidemount

### ❌ Not Recommended: Direct Mounting on the First Stage HP Port
*   Screwing the transmitter directly into the first stage high-pressure (HP) port makes it **protrude outward**. In sidemount, this exposed location under the armpit is highly vulnerable to impacts, wraps around guidelines, and increases leverage torque that can damage the HP port [1].

### ✅ Recommended: Short HP Hose Extension
*   Use a **15–23 cm (6–9 inch) high-pressure hose** to connect the transmitter, allowing the transmitter to lie protected **flat against the inside of the cylinder**, pointing downward to prevent protrusion [1].
*   **If Retaining a Backup SPG**: Use a high-pressure splitter (HP Splitter, such as Apeks dual-port adaptors) to run the transmitter and the SPG on separate short HP hoses routing downward [1].

> 📌 **Should you retain a backup mechanical SPG?** Technical diving conservatism suggests keeping at least one mechanical SPG as a backup to electronic failures; some divers choose a dual AI setup with a spare hose SPG stowed in their utility pocket. This is a risk-tolerance choice with no single industry standard [1][2].

---

## 🖥 Multi-Transmitter & Sidemount-Mode Dive Computers (updated 2026-09)

Sidemount AI has two tiers: **(1) can it show both cylinder pressures on one screen** (most technical computers can), and **(2) does it have sidemount-specific algorithms** (pooled two-cylinder GTR, switch reminders, redundancy margin). The second tier is where sidemount divers actually benefit.

| Model | Max Transmitters | Sidemount-Specific Mode | Remarks |
| :--- | :--- | :--- | :--- |
| **Shearwater Perdix 2 / Petrel 3** | 4 | ✅ SM mode + RTR | Technical diving standard; OC and CC supported [3] |
| **Shearwater Teric** | 4 | ✅ SM mode + RTR | Watch-style [3][5] |
| **Shearwater Tern TX** | 4 Swift | ✅ SM mode | Compact AI model released 2025; also compatible with Legacy transmitters [9] |
| **Shearwater Perdix AI / NERD 2** | 4 | ✅ SM mode + RTR | Gained via firmware update on older hardware [3] |
| **Garmin Descent Mk3i** | 8 T2 | ✅ Sidemount Setup | Requires Descent T2; system software 25.21 (2026-04) added the RTR data field [7][8] |
| **Suunto Ocean** | 5 | ❌ (simultaneous display only) | Watch-style AI |
| **Apeks DSX** | ✅ | ✅ Dedicated sidemount mode | [1] |
| **Ratio iX3M 2 / iDive Color** | ✅ | ❌ | Italian technical brand [1] |
| **Scubapro Galileo 2 (G2)** | ✅ | ❌ | Recreational and light technical diving [1] |

### 🔀 What Sidemount Mode Actually Does

**Shearwater** (`AI Setup → GTR Mode → SM:T1+T2`) [3]:

1.  **Pooled cylinder pressures**: the official manual is explicit — sidemount SAC and GTR use exactly the same algorithm as single-tank, except that **the tank pressures are pooled before each calculation, essentially treating the two tanks as one large tank**.
2.  **Identical volumes only**: the manual explicitly forbids enabling sidemount AI on cylinders of differing volume (the design removes the need to enter tank volumes and reduces input errors). Turn the mode off for mixed-volume setups such as travel cylinders.
3.  **RTR (Redundant Time Remaining)**: GTR computed from **the lower-pressure cylinder only** — i.e. "how much time remains if all gas in the higher-pressure cylinder is lost". This puts the redundancy logic of [[en/10_Concepts/Self-Sufficiency Philosophy|Self-Sufficiency Philosophy]] on the wrist, and can be cross-read against Rock Bottom in [[en/40_Gas_Management/Gas Planning & Safety Reserve Principles|Gas Planning & Safety Reserve Principles]].
4.  **SM Switch reminder**: when the pressure difference between cylinders exceeds the configured threshold, a green box highlights which cylinder you should be breathing. Adjustable **7–69 bar (100–999 psi)**; the manual's setup illustration shows 21 bar, while this knowledge base teaches a 30 bar rotation (see [[en/40_Gas_Management/Sidemount Gas Switching Procedures|Sidemount Gas Switching Procedures]]). Pick one and leave it alone mid-trip.

**Garmin Descent Mk3i** (`Dive Setup → Dive Network & Air Integration → Display Setup → Sidemount Setup`) [7]:
Both T2 transceivers must be installed on **equal-volume cylinders**, paired, and set to the `My Tank` location option. When the pressure difference exceeds the `Switch Pressure` threshold an alert appears; the transceiver data screen shows both pressures and **highlights the recommended cylinder in blue**.

> 🔄 **Revision (2026-09)**: this note previously stated that "most dive computer GTR algorithms only calculate based on a single designated transmitter and cannot combine two sidemount cylinders". That claim rested solely on a community forum thread [2] and is contradicted by the manufacturer's manual — Shearwater has supported pooled two-cylinder calculation since at least Perdix 2 manual Doc. 13300-REC-RevC. The original statement now applies only to older units, or to units with sidemount mode disabled.

### ⚠️ Remaining Limitations of Sidemount Mode

*   **Sidemount mode does not replace manual planning**: GTR extrapolates from the average SAC over roughly the last two minutes, and badly underestimates consumption under current, task loading, or emergency stress. Rock Bottom in this knowledge base is always computed by hand using a high-workload RMV (see [[en/40_Gas_Management/Gas Consumption Rate (SAC & RMV) Calculation|Gas Consumption Rate (SAC & RMV)]] and [[en/40_Gas_Management/Gas Planning & Safety Reserve Principles|Gas Planning & Safety Reserve Principles]]).
*   **Mixed volumes, three or more cylinders, or staged deco bottles** break the pooling assumption; fall back to single-tank GTR or raw pressure reading (see [[en/60_Advanced/Multi-Cylinder & Decompression Stage Configuration|Multi-Cylinder & Decompression Stage Configuration]]).
*   **Open-circuit GTR never accounts for decompression obligation**: Shearwater displays `deco` instead of a GTR value once stops are required.

### 📶 Transmitter Cross-Talk & Interference

*   All Shearwater transmitters share the same **38 kHz** carrier; collisions are avoided by **staggered transmission intervals**, not by different frequencies. Shearwater's voluntary recall of yellow transmitters (2019-02-25) was issued precisely because some yellow units shared the same transmission interval as grey units, causing dropped signals when both were used together [4].
*   Modern **Swift transmitters use randomized transmission intervals** (adaptive collision avoidance), so multiple units no longer interfere [5][6].
*   When buying used legacy transmitters, confirm the two are **different colours** (colour encoded the transmission interval under the old scheme), or simply choose Swift.

---

## 🧭 Sidemount Computer Placement Habits

1.  **Wear the Primary Computer on the Left Wrist**: The right hand is frequently used for long hose deployment and cylinder operations, making the left wrist the natural choice for reading dive data.
2.  **Backup Computer (or Bottom Timer)**: Technical diving requires redundant depth/time gauges; if the primary computer fails, the diver aborts and executes the deco plan using the backup.
3.  **Cross-Checking Pressures**: Simultaneous screen display makes identifying the "30-bar rotation point" highly efficient, but **regulator switches must still follow the three-check verification protocol**.

---

## 📚 References

1. **Andy Davis (Scuba Tech Philippines)** - *Sidemount Air Integration | Ultimate Guide to AI Transmitter Setup*: Transmitter mounting using short HP extensions, HP splitter layouts, and compatible dual-transmitter computer lists. [Link](https://scubatechphilippines.com/scuba_blog/setup-sidemount-air-integration-ai-transmitters/)
2. **ScubaBoard Forum** - *Using 2 transmitters on one computer*: Community discussion on dual-transmitter needs and GTR limitations on older models. **Community source, supplementary only** — the "GTR cannot combine two cylinders" claim originally drawn from this thread has been corrected by manufacturer documentation [3]. [Link](https://scubaboard.com/community/threads/using-2-transmitter-on-one-computer.570865/)
3. **Shearwater Research (manufacturer manual)** - *Perdix 2 — Recreational Modes Operating Instructions* (Doc. 13300-REC; PDF via the official support page): §10.4 Sidemount AI and §10.7 GTR calculations — tank pressures "pooled prior to each calculation… treated as one large tank", the explicit warning against differing tank volumes, the RTR definition (lower-pressure tank only), and the SM Switch threshold range of 7–69 bar / 100–999 psi. [Link](https://shearwater.com/pages/perdix-2-support)
4. **Shearwater Research (manufacturer notice)** - *Voluntary Recall Notice – Yellow Transmitters* (2019-02-25): the recall was caused by some yellow transmitters sharing the same **transmission interval** as grey units, not a shared frequency. [Link](https://shearwater.com/blogs/community/voluntary-recall-notice-yellow-transmitters)
5. **Shearwater Research** - *Streamlining Your Dive: Why More Divers Are Choosing Transmitters*: Manufacturer explanation of transmitter operation and the Swift's randomized interval design. [Link](https://shearwater.com/blogs/community/transmitters-and-air-integration)
6. **Shearwater Research** - *Extreme (and Not So Extreme) Multistage Sidemount Cave Diving with AI*: Field case studies using multiple AI transmitters in cave environments. [Link](https://shearwater.com/blogs/community/extreme-and-not-so-extreme-multistage-sidemount-cave-diving-with-ai)
7. **Garmin (manufacturer manual)** - *Descent Mk3 Series Owner's Manual — Enabling Sidemount Setup*: menu path, the requirement that both transceivers be on equal-volume tanks and set to My Tank, the Switch Pressure threshold, and the blue highlight on the recommended cylinder. [Link](https://www8.garmin.com/manuals/webhelp/GUID-9183E86B-2399-4CFC-AB50-EAFC6D6ED326/EN-US/GUID-423F95DD-75F3-470B-AF43-4D25AB5EE15C.html)
8. **Garmin Forums (manufacturer release notes)** - *Descent Mk3/Mk3i System Software 25.21*: the 2026-04 release adding sidemount support and the RTR data field (air time remaining in the lower of two sidemount tanks). [Link](https://forums.garmin.com/outdoor-recreation/outdoor-recreation/f/descent-mk3-series/434735/descent-mk3-mk3i-system-software-25-21)
9. **Shearwater Research (manufacturer)** - *Tern TX* (product page) and *Tern TX Support* (manuals/firmware): the product page states "Connects up to 4 transmitters"; the Tern TX Operating Instructions (firmware V25) cover §8.11 Sidemount AI and §8.14 GTR calculations, including sidemount cylinder switch notifications. [Link](https://shearwater.com/pages/tern-tx-support)
