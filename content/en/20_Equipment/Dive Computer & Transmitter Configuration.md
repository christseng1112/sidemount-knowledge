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

## 🖥 Compatible Dual-Transmitter Dive Computers (2024 Data) [1]

| Model | Dual-Cylinder Simultaneous Screen | Remarks |
| :--- | :--- | :--- |
| **Shearwater Perdix 2 Ti** | ✅ | Technical diving standard, supports up to 4 transmitters. |
| **Shearwater Petrel 3** | ✅ | Supports both Open Circuit and Closed Circuit configurations. |
| **Shearwater Teric** | ✅ | Watch-style computer, supports dual transmitters [3]. |
| **Apeks DSX** | ✅ | Features dedicated sidemount mode. |
| **Ratio iX3M 2 / iDive Color**| ✅ | Italian technical brand. |
| **Scubapro Galileo 2 (G2)** | ✅ | Recreational and light technical diving. |

### ⚠️ Gas Time Remaining (GTR) Limitations in Sidemount
*   Most dive computer GTR algorithms **only calculate based on a single designated transmitter**, and cannot combine the pressures of two independent sidemount cylinders [2].
*   The process of rotating breathing between two cylinders (see [[en/40_Gas_Management/Sidemount Gas Switching Procedures|Sidemount Regulator Switching Procedure]]) distorts the computer's SAC rate tracking. **GTR calculations should only be used as a reference; gas management must rely on manual calculations** (see [[en/40_Gas_Management/Gas Planning & Safety Reserve Principles|Gas Planning & Safety Reserve Principles]]).

### 📶 Transmitter Cross-Talk & Interference
*   Early transmitters operating on the same frequency could block each other's signals if they transmitted at the same moment. Shearwater recalled yellow transmitters in 2019 because they shared the same frequency as gray versions. Modern **Swift transmitters utilize random transmission intervals** to prevent signals from colliding [3][4].
*   When purchasing pre-owned older transmitters, ensure they operate on **different frequencies** (historically color-coded) or use Swift transmitters.

---

## 🧭 Sidemount Computer Placement Habits

1.  **Wear the Primary Computer on the Left Wrist**: The right hand is frequently used for long hose deployment and cylinder operations, making the left wrist the natural choice for reading dive data.
2.  **Backup Computer (or Bottom Timer)**: Technical diving requires redundant depth/time gauges; if the primary computer fails, the diver aborts and executes the deco plan using the backup.
3.  **Cross-Checking Pressures**: Simultaneous screen display makes identifying the "30-bar rotation point" highly efficient, but **regulator switches must still follow the three-check verification protocol**.

---

## 📚 References

1. **Andy Davis (Scuba Tech Philippines)** - *Sidemount Air Integration | Ultimate Guide to AI Transmitter Setup*: Transmitter mounting using short HP extensions, HP splitter layouts, and compatible dual-transmitter computer lists. [Link](https://scubatechphilippines.com/scuba_blog/setup-sidemount-air-integration-ai-transmitters/)
2. **ScubaBoard Forum** - *Using 2 transmitters on one computer*: Community discussion on GTR limitations with dual transmitters and sidemount mode requirements (community source for reference). [Link](https://scubaboard.com/community/threads/using-2-transmitter-on-one-computer.570865/)
3. **Shearwater Research** - *Streamlining Your Dive: Why More Divers Are Choosing Transmitters*: Technical explanation of transmitter operations and the Swift's random interval transmission design. [Link](https://shearwater.com/blogs/community/transmitters-and-air-integration)
4. **Shearwater Research** - *Extreme (and Not So Extreme) Multistage Sidemount Cave Diving with AI*: Field case studies utilizing multiple AI transmitters in cave diving environments. [Link](https://shearwater.com/blogs/community/extreme-and-not-so-extreme-multistage-sidemount-cave-diving-with-ai)
