---
title: Exposure Suit Selection & Trim Influence
tags:
  - sidemount/equipment
  - status/completed
---

# Exposure Suit Selection & Trim Influence (Exposure Protection & Its Effect on Trim)

An exposure suit is not just thermal protection—it is **one of the largest variables** in the sidemount trim equation. A wetsuit's buoyancy compresses and decreases at depth, whereas drysuit gas shifts dynamically within the suit. Both have a cascading effect on ballast requirements, weight placement, and cylinder selection.

---

## 🩱 Wetsuits

### Non-Linear Buoyancy Loss at Depth
*   Neoprene is a closed-cell foam containing gas bubbles that compress under ambient water pressure. Empirical data (Bardy et al. 2005) indicates: **a wetsuit loses approximately 30% of its surface buoyancy in the first 10 meters, about 60% at 60 meters, and stabilizes at around 65% loss at 100 meters** [1].
*   For example, a wetsuit providing 5 kg of surface buoyancy only offers 3.5 kg at 10 meters, and drops to 2 kg at 60 meters.
*   The deeper the dive, the less buoyancy the wetsuit provides, requiring more compensation from the BCD. **The sidemount wing lift capacity must be sufficient to offset both the negative cylinder weight and the buoyancy lost by the wetsuit at depth** [1].

### Impact on Sidemount Configurations
1.  **Less Ballast, Centralized Placement**: Wetsuit ballast can typically be placed entirely in a spine weight pouch, eliminating the need for lateral pockets [2].
2.  **Cylinder Choice (Aluminum or Light Steel)**: Wetsuit divers using heavy steel cylinders run the risk of carrying too much **non-ditchable ballast** (since cylinders cannot be dropped). If the BCD bladders rupture at depth, the diver may struggle to establish positive buoyancy [3].
3.  **Thin Wetsuits (3mm or less) + Aluminum Tanks** represent the golden combination for warm-water sidemount: minimal ballast required, and horizontal Trim is easily established.

---

## 🧥 Drysuits

### Buoyancy Characteristics
*   The drysuit shell and thermal undergarment trap air, creating substantial surface buoyancy. This **significantly increases ballast requirements**; undergarment thickness can swing ballast needs by 4–6 kg or more [4].
*   Air inside a drysuit shifts with the diver's posture. If air accumulates in the boots, the lower body floats, making gas management a dynamic trim factor [4][5].

### Impact on Sidemount Configurations
1.  **High Ballast Load**: When spine weight pockets are full, divers must utilize side pockets and front trim pockets [2]. Some minimalist harnesses (like the original Razor) have limited ballast capacity under heavy drysuit configurations [2].
2.  **Cylinder Choice (Steel)**: Heavy steel cylinders act as ballast, shifting weight from the waist belt to the center of buoyancy, making horizontal Trim easier to establish (see [[en/20_Equipment/Steel vs Aluminum Buoyancy Management|Steel vs Aluminum Buoyancy Management]]) [3][4].
3.  **Inflation Hose Routing**: A drysuit requires a dedicated low-pressure inflator hose. The industry standard is to **run the drysuit inflator from the left cylinder** (separating it from the BCD inflator on the right). This ensures that a single-cylinder failure does not eliminate all buoyancy control systems [4]. For drysuits as backup buoyancy, see [[en/50_Safety/Sidemount BCD Failure Handling|Sidemount BCD Failure Handling]].
4.  **Hardware Sizing**: Since dry gloves limit dexterity, all bolt snaps should be upgraded to large-eye versions [4].

### 💨 Coordinating Drysuit & BCD Inflation
When diving a drysuit in sidemount, the diver has two gas volumes (drysuit interior and BCD wing) that control buoyancy. Inflating both arbitrarily causes gas to shift uncontrollably, disrupting Trim (known as a "Gas Fight"). Divers must coordinate inflation using the following golden rules [4][5]:
1.  **Drysuit is Solely for Squeeze Prevention**:
    *   During descent, increasing water pressure compresses the drysuit, causing squeeze discomfort. **Inject only enough air into the drysuit to eliminate the squeeze and restore mobility**.
    *   Stop inflating the drysuit once the squeeze is resolved. Never use the drysuit as the primary buoyancy compensator; excess gas will migrate to the boots or shoulders, causing unstable leg-float or inversion hazards.
2.  **BCD is the Primary Buoyancy Compensator**:
    *   To offset cylinder gas consumption and make mid-water neutral buoyancy adjustments, **use the BCD exclusively**. The BCD bladder fits close to the body's midline, minimizing the impact of gas migration on Trim.
3.  **Coordinated Ascent Venting**:
    *   During ascent, gas in both chambers expands.
    *   **Drysuit Valve Setup**: Fully open the left shoulder exhaust valve (or back off 1-2 clicks) before the dive. During ascent, simply maintain a horizontal Trim and slightly raise the left shoulder; expanding drysuit gas will vent automatically.
    *   **BCD Venting**: Focus active attention on manual BCD venting (pulling the dump valve cord or inflator dump) to control the ascent rate, allowing the drysuit to auto-vent.

---

## 📊 Quick Reference Configuration Matrix

| Parameter | Thin Wetsuit (Warm Water) | Thick Wetsuit (5-7mm) | Drysuit (Cold Water) |
| :--- | :--- | :--- | :--- |
| **Ballast Required** | Minimal | Moderate (substantial loss at depth) | High |
| **Weight Placement** | Spine Pouch | Spine Pouch (primary) | Spine Pouch + Side Pockets + Trim Pockets [2] |
| **Recommended Cylinders**| Aluminum (AL80) | Aluminum or Light Steel | Steel (12L / LP85) [3][4] |
| **Backup Buoyancy** | Dual-Bladder BCD or SMB | Dual-Bladder BCD | Drysuit (with specific constraints) |
| **Buoyancy Shift at Depth**| Minimal | **High** (requires planning) | Minimal (compensated by drysuit gas) |

> 📋 **Assumptions & Limitations**: Wetsuit buoyancy values vary significantly by brand, material, and compression wear (compressed old wetsuits lose buoyancy). **Always perform a weight check when changing exposure suit combinations; do not copy weight numbers blindly** [4].

---

## 📚 References

1. **Wikipedia** - *Buoyancy compensator (diving)*: Neoprene compression under hydrostatic pressure (citing Bardy et al. 2005)—wetsuit loses 30% lift in first 10m, 60% at 60m, and stabilizes at 65% loss at 100m, necessitating BCD compensation. [Link](https://en.wikipedia.org/wiki/Buoyancy_compensator_(diving))
2. **XDEEP** - *Stealth 2.0 Classic Technical Page*: Manufacturer's explanation of ballast systems for wetsuits (spine weight pocket) vs. drysuits (side and front trim pockets). [Link](https://www.xdeep.eu/sidemount-stealth-classic-rig-cave-harness-pr-104.html)
3. **Andy Davis (Scuba Tech Philippines)** - *Scuba Diving Cylinders: Steel or Aluminium?*: Risk analysis of wetsuits with heavy steel cylinders (non-ditchable ballast) vs. drysuit-steel tank weighting efficiencies. [Link](https://scubatechphilippines.com/scuba_blog/steel-or-aluminium-cylinders/)
4. **Sarah Valdez (Azul Unlimited)** - *Sidemount Diving with a Dry Suit*: Practical drysuit sidemounting—performing weight checks with varying undergarments, adjusting cam bands, running drysuit gas from the left tank, and using large-eye bolt snaps. [Link](https://azulunlimited.com/sidemount-diving-with-a-dry-suit/)
5. **Cenote Girl (Mexico Cave Instructor Site)** - *Undergarments, the unsung heroes of drysuit diving*: Impact of undergarments on buoyancy and Trim, and strategies to utilize them. [Link](https://cenotegirl.com/blog-3-1/undergarments-the-unsung-heroes-of-drysuit-diving)
