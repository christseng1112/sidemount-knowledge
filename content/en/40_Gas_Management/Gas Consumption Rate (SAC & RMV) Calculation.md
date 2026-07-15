---
title: Gas Consumption Rate (SAC & RMV) Calculation
tags:
  - sidemount/gas-management
  - status/completed
---

# Gas Consumption Rate (SAC & RMV) Calculation (SAC & RMV Calculation Guide)

In independent dual-cylinder sidemount diving, accurately tracking your gas consumption rate is the cornerstone of gas safety. Without knowing your breathing rate, you cannot estimate your dive time limit at a specific depth, nor can you calculate your emergency reserve gas (Rock Bottom) [1][2].

This article distinguishes the physical differences between **Surface Air Consumption (SAC)** and **Respiratory Minute Volume (RMV)**, provides manual calculation formulas, and runs through a Step-by-Step example.

---

## 📐 Physical Definitions of SAC and RMV

Although both metrics measure a diver's gas consumption, their physical meanings differ:

1.  **SAC Rate (Surface Air Consumption)**:
    *   *Definition*: The rate of **pressure drop** consumed per minute at the surface (1 ATA) (units: $\text{bar/min}$ or $\text{psi/min}$) [2][3].
    *   *Limitation*: **SAC is tied to a specific cylinder volume**. For example, your SAC using a 12L steel tank is not equal to your SAC using an 11.1L aluminum tank (larger tanks drop in pressure slower, smaller tanks drop faster). Therefore, SAC rates between different cylinders cannot be compared directly [2][4].
2.  **RMV (Respiratory Minute Volume)**:
    *   *Definition*: The actual **volume of gas** consumed per minute at the surface (1 ATA) (units: $\text{L/min}$ or $\text{ft}^3\text{/min}$) [2][5].
    *   *Advantage*: **RMV is a physiological metric independent of cylinder size**. No matter what size cylinder you carry, under the same workload and task loading, your RMV remains constant. This is highly valuable in sidemount diving, where divers frequently travel and rent different cylinder sizes [2].

---

## 🧮 Core Calculations & Formulas

### 1. Surface Air Consumption (SAC) Formula
$$\text{SAC (bar/min)} = \frac{\Delta P}{\text{Time} \times \text{ATA}}$$

Where:
*   \(\Delta P\): Pressure consumed during the dive (Start Pressure - End Pressure, units: \(\text{bar}\)).
*   \(\text{Time}\): Duration of the dive (units: \(\text{min}\)).
*   \(\text{ATA}\): **Average absolute pressure** during the dive (Atmospheres Absolute) [6][7].
    *   *ATA Calculation*: $$\text{Average Depth (ATA)} = \frac{\text{Average Depth (meters)}}{10} + 1$$

---

### 2. Respiratory Minute Volume (RMV) Formula
$$\text{RMV (L/min)} = \text{SAC (bar/min)} \times \text{Cylinder Volume (L)}$$

Or directly from raw data:
$$\text{RMV (L/min)} = \frac{\Delta P \times \text{Cylinder Volume}}{\text{Time} \times \text{ATA}}$$

---

## 📝 Step-by-Step Example

### 📋 Assumed Dive Data:
*   **Cylinder**: A single 11.1L (AL80) aluminum cylinder.
*   **Dive Duration (Time)**: \(45 \text{ minutes}\).
*   **Average Depth**: \(18 \text{ meters}\).
*   **Gas Consumed (\(\Delta P\))**: Start pressure \(200 \text{ bar}\), end pressure \(90 \text{ bar}\) (total consumed: \(110 \text{ bar}\)).

---

### Step 1: Calculate Average Absolute Pressure (ATA)
$$\text{ATA} = \frac{18\text{ m}}{10} + 1 = 2.8 \text{ ATA}$$
This means that breathing at 18 meters requires 2.8 times the gas density of breathing at the surface [6][7].

---

### Step 2: Calculate Surface Air Consumption (SAC)
$$\text{SAC} = \frac{110\text{ bar}}{45\text{ min} \times 2.8\text{ ATA}} = \frac{110}{126} \approx 0.873 \text{ bar/min}$$
This means that if the diver breathed this 11.1L cylinder at the surface, the pressure would drop by 0.873 bar per minute.

---

### Step 3: Convert to Respiratory Minute Volume (RMV)
$$\text{RMV} = 0.873\text{ bar/min} \times 11.1\text{ L} \approx 9.69 \text{ L/min}$$
The diver's RMV is approximately **\(9.7 \text{ L/min}\)**. This represents a highly relaxed, streamlined diver with efficient propulsion [2][4].

---

<div style="background: #1e1e24; border: 1px solid #3a3a4a; border-radius: 12px; padding: 20px; margin: 25px 0; color: #f0f0f5; font-family: system-ui, sans-serif; box-shadow: 0 4px 15px rgba(0,0,0,0.3);">
  <h3 style="color: #00d2ff; margin-top: 0; border-bottom: 1px solid #3a3a4a; padding-bottom: 8px; font-weight: 600;">🧮 Interactive SAC & RMV Calculator</h3>
  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(180px, 1fr)); gap: 15px; margin-bottom: 20px;">
    <div>
      <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">Cylinder Volume (L)</label>
      <input type="number" id="cylVol" value="11.1" step="0.1" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
    </div>
    <div>
      <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">Average Depth (m)</label>
      <input type="number" id="avgDepth" value="18" step="0.1" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
    </div>
    <div>
      <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">Dive Duration (min)</label>
      <input type="number" id="diveTime" value="45" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
    </div>
    <div>
      <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">Gas Consumed (bar)</label>
      <input type="number" id="gasConsumed" value="110" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
    </div>
  </div>
  <button onclick="calculateSacRmv()" style="background: linear-gradient(135deg, #00d2ff, #0072ff); border: none; border-radius: 6px; color: white; padding: 10px 20px; font-weight: bold; cursor: pointer; transition: opacity 0.2s; width: 100%;">Calculate SAC & RMV</button>
  
  <div style="margin-top: 20px; padding: 15px; background: #141419; border-radius: 8px; border: 1px solid #2d2d38;">
    <div style="display: flex; justify-content: space-between; margin-bottom: 8px;">
      <span style="color: #a0a0b0;">Average Absolute Pressure (ATA):</span>
      <span id="resAta" style="color: #fff; font-weight: bold;">2.80 ATA</span>
    </div>
    <div style="display: flex; justify-content: space-between; margin-bottom: 8px;">
      <span style="color: #a0a0b0;">Surface Air Consumption (SAC):</span>
      <span id="resSac" style="color: #00d2ff; font-weight: bold;">0.87 bar/min</span>
    </div>
    <div style="display: flex; justify-content: space-between;">
      <span style="color: #a0a0b0;">Respiratory Minute Volume (RMV):</span>
      <span id="resRmv" style="color: #00ff88; font-weight: bold;">9.69 L/min</span>
    </div>
  </div>
</div>

<script>
function calculateSacRmv() {
  var vol = parseFloat(document.getElementById('cylVol').value);
  var depth = parseFloat(document.getElementById('avgDepth').value);
  var time = parseFloat(document.getElementById('diveTime').value);
  var cons = parseFloat(document.getElementById('gasConsumed').value);
  
  if (isNaN(vol) || isNaN(depth) || isNaN(time) || isNaN(cons) || time <= 0 || vol <= 0) {
    alert('Please enter valid positive numbers!');
    return;
  }
  
  var ata = (depth / 10) + 1;
  var sac = cons / (time * ata);
  var rmv = sac * vol;
  
  document.getElementById('resAta').innerText = ata.toFixed(2) + ' ATA';
  document.getElementById('resSac').innerText = sac.toFixed(2) + ' bar/min';
  document.getElementById('resRmv').innerText = rmv.toFixed(2) + ' L/min';
}
</script>

> 📋 **Notes & Assumptions**
> *   Calculated using the **average depth** of the dive, assuming depth remained stable; for multi-level (sawtooth) profiles, calculate segment by segment.
> *   AL80 internal volume is assumed to be **11.1 L** (Luxfer S80 specifications), which varies slightly by manufacturer.
> *   Mechanical pressure gauges have a typical error margin of ±5 bar; average your SAC/RMV over **multiple dives** for accuracy.
> *   This calculator yields your **relaxed/baseline** RMV. **Never** use this baseline for Rock Bottom; refer to the task loading table below for emergency planning.

---

## 📊 Dynamic Impacts of Task Loading on RMV

When planning emergency gas reserves (Rock Bottom), **you must never use your baseline RMV**. Stress, panic, and heavy swimming (e.g., swimming against a current or sharing gas) will cause your breathing rate to spike exponentially [1][8]:

| Diver State | Typical RMV Range | Gas Consumption Characteristics & Applications |
| :--- | :--- | :--- |
| **Highly Relaxed** | **8 - 12 L/min** | Warm water, no current, stationary hover [2]. |
| **Normal Swimming** | **12 - 15 L/min** | Open water sightseeing, zero task loading. |
| **Light Work / Tech Diving** | **15 - 20 L/min** | Carrying cameras, managing lights, light current, guideline operations. |
| **Heavy Work / Strong Flow** | **20 - 25 L/min** | Heavy swimming against current, cold-water drysuit diving [8]. |
| **Emergency / Panic** | **30 - 45 L/min** | **Rock Bottom calculation standard**. Buddy gas-sharing ascents, catastrophic gas loss, and panic conditions [1][8][9]. |

---

## 📚 References

1. **Crystal Dive** - *Master Surface Air Consumption: How to Lower Your SAC Rate*: Defining SAC, sample calculations, and practical strategies for lowering breathing rates (relaxation, buoyancy, streamlining). [Link](https://www.crystaldive.com/master-your-surface-air-consumption/)
2. **No Gravity Divers** - *How to calculate air consumption? SAC and RMV in Scuba Diving*: Differences between SAC (bar/min, tied to cylinder size) and RMV (L/min, universal physiological rate). [Link](https://nogravity-divers.com/how-to-calculate-air-consumption-sac-and-rmv-in-scuba-diving/)
3. **DAN (Divers Alert Network), Alert Diver** - *Estimating Your Air Consumption*: Formula breakdowns and conversions for imperial (psi) systems. [Link](https://dan.org/alert-diver/article/estimating-your-air-consumption/)
4. **DAN (Divers Alert Network), Alert Diver** - *Performance Under Pressure*: How increased gas density at depth raises the work of breathing (WOB) and impairs CO₂ elimination. [Link](https://dan.org/alert-diver/article/performance-under-pressure/)
5. **Scuba Tech Philippines (Andy Davis)** - *Scuba Gas Planning: Gas Management For Divers*: Rock Bottom calculations and conservative multipliers (double/triple breathing rates) for emergency situations. [Link](https://scubatechphilippines.com/scuba_blog/scuba-gas-planning-management-divers/)
6. **PADI Blog** - *Diving Physics: The Science Behind Your Underwater Adventures*: Formulas for absolute pressure (ATA) and gas density. [Link](https://blog.padi.com/diving-physics/)
7. **TDI/SDI** - *Do we have enough? Handling breathing gas properly*: Gas requirements, converting across different cylinder sizes, and reserve planning. [Link](https://www.tdisdi.com/tdi-diver-news/do-we-have-enough/)
8. **Divernet** - *Gas Planning 101: How to Calculate Your RMV*: Calculating RMV and applying panic stress multipliers for emergency reserves. [Link](https://divernet.com/medical/gas-planning-101-how-to-calculate-your-rmv/)

> ⚠️ Note on Citations: Sources [7] and [8] utilize anti-scraping mechanisms (403); contents verified via search engine index.
