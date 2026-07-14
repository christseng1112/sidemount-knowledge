---
title: Gas Planning & Safety Reserve Principles
tags:
  - sidemount/gas-management
  - status/completed
---

# Gas Planning & Safety Reserve Principles (Sidemount Gas Planning & Reserves)

In sidemount diving, gas planning requires a fundamental shift in mindset. Unlike backmount double cylinders (which are connected via a manifold and treated as a single gas source), **sidemount cylinders are completely independent**. A diver cannot breathe from both cylinders simultaneously, which means that if a catastrophic failure occurs on one side, the diver must return to the surface safely using only the gas remaining in the other single cylinder [1][2].

This article analyzes the 1/3 safety reserve rule, the 1/6 pressure switch protocol, catastrophic failure gas calculations, and cylinder volume matching.

---

## 📐 1/3 Reserve Rule & 1/6 Pressure Switch Application

In technical diving and overhead environments (caves, wrecks), gas allocation must adhere to strict safety boundaries:

### 1. Classic 1/3 Rule (Rule of Thirds)
The 1/3 rule divides the total gas volume into three equal parts:
*   **1/3 for Penetration**: Used to swim from the entry point into the depths of the overhead environment.
*   **1/3 for Exit**: Used to return along the same path to the exit point.
*   **1/3 as Safety Reserve**: **This gas must never be breathed under normal circumstances**. It serves as an emergency reserve to support a buddy share or handle gear failures (such as a blown hose or regulator free-flow) [2][3].

### 2. The 1/6 Pressure Switch Principle
To maintain left/right cylinder pressure balance and physical symmetry during a swim, sidemount divers utilize a rotational switching routine:
*   **Method**: Switch regulators every time you consume approximately 1/6 of a single cylinder's capacity (or a fixed ~30 bar interval).
*   **Physical Effect**: Keeps the pressure difference between the two cylinders minimal, minimizing gas loss if one side fails, and maintaining a balanced horizontal Trim [2][4].

> ⚠️ **Clarification on Terminology**: In technical diving literature, the **"Rule of Sixths" is a gas reserve rule** proposed by Sheck Exley for high-flow caves (where current assists the exit: using 1/6 for penetration and reserving 5/6). It is not to be confused with the 1/6 pressure switch rotation rate, which is a trim and management protocol [2][4].

---

## 🚨 Catastrophic Failure & Gas Redundancy Calculations

The most extreme gas threat in sidemount is the sudden loss of an entire cylinder (e.g., a burst first stage or blown burst disk, venting a tank to zero in under a minute).

Divers must ensure that: **at any point in the dive, losing a single cylinder leaves sufficient gas in the remaining cylinder to get both you and your buddy safely to the surface [1][5].**

### 🧮 Team Rock Bottom Model
In technical diving safety planning, **Rock Bottom (minimum reserve pressure) must assume a buddy gas-sharing ascent where both divers' respiratory minute volumes (RMVs) spike due to panic** [1][3].

#### 📌 Calculation Parameters:
*   **Depth**: $30 \text{ meters}$ (maximum depth of $4 \text{ ATA}$, safety stop at $5 \text{ meters}$ at $1.5 \text{ ATA}$).
*   **Panic RMV**: Normally 20 L/min, estimated to spike to **$35 \text{ L/min}$** per diver under panic (total team gas requirement: **$70 \text{ L/min}$**) [4][5].
*   **Solve Time**: $1.5 \text{ minutes}$ at maximum depth to handle the failure, establish the gas share, and stabilize emotions [6].
*   **Ascent Rate**: $9 \text{ meters/minute}$ (ascent from 30m to 5m takes $2.8 \text{ minutes}$, with an average depth of 17.5m equivalent to **$2.75 \text{ ATA}$**) [6].

#### 🧮 Step-by-Step Calculation:
1.  **Solve Phase Gas (at Max Depth)**:
    $$\text{Solve Gas} = 70 \text{ L/min} \times 4 \text{ ATA} \times 1.5 \text{ min} = 420 \text{ Liters}$$
2.  **Ascent Phase Gas (30m to 5m)**:
    $$\text{Ascent Gas} = 70 \text{ L/min} \times 2.75 \text{ ATA} \times 2.8 \text{ min} = 539 \text{ Liters}$$
3.  **5m Safety Stop Gas (3 minutes)**:
    $$\text{Safety Stop Gas} = 70 \text{ L/min} \times 1.5 \text{ ATA} \times 3 \text{ min} = 315 \text{ Liters}$$
4.  **Total Self-Rescue Gas Required**:
    $$\text{Rock Bottom Volume} = 420\text{L} + 539\text{L} + 315\text{L} = 1274 \text{ Liters}$$

#### 📊 Conversion to 11.1L (AL80) Cylinder Pressure:
Because sidemount uses independent cylinders, **each cylinder must independently contain 100% of this self-rescue gas volume**. If one cylinder fails, the remaining cylinder must be able to support both divers [1][6].
$$\text{Rock Bottom Pressure} = \frac{1274\text{ L}}{11.1\text{ L}} \approx 115 \text{ bar (approx. 1670 psi)}$$

<div style="background: #1e1e24; border: 1px solid #3a3a4a; border-radius: 12px; padding: 20px; margin: 25px 0; color: #f0f0f5; font-family: system-ui, sans-serif; box-shadow: 0 4px 15px rgba(0,0,0,0.3);">
  <h3 style="color: #ff4a4a; margin-top: 0; border-bottom: 1px solid #3a3a4a; padding-bottom: 8px; font-weight: 600;">🚨 Interactive Rock Bottom Gas Calculator</h3>
  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(180px, 1fr)); gap: 15px; margin-bottom: 20px;">
    <div>
      <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">Planned Max Depth (m)</label>
      <input type="number" id="rbDepth" value="30" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
    </div>
    <div>
      <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">Single Diver Panic RMV (L/min)</label>
      <input type="number" id="rbRmv" value="35" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
    </div>
    <div>
      <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">Bottom Solve Time (min)</label>
      <input type="number" id="rbSolveTime" value="1.5" step="0.5" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
    </div>
    <div>
      <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">Ascent Rate (m/min)</label>
      <input type="number" id="rbAscentRate" value="9" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
    </div>
    <div>
      <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">Safety Stop Duration (min)</label>
      <input type="number" id="rbSafetyStop" value="3" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
    </div>
    <div>
      <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">Single Cylinder Volume (L)</label>
      <input type="number" id="rbCylVol" value="11.1" step="0.1" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
    </div>
  </div>
  
  <button onclick="calculateRockBottom()" style="background: linear-gradient(135deg, #ff4a4a, #d10000); border: none; border-radius: 6px; color: white; padding: 10px 20px; font-weight: bold; cursor: pointer; transition: opacity 0.2s; width: 100%;">Calculate Minimum Reserve (Rock Bottom)</button>
  
  <div style="margin-top: 20px; padding: 15px; background: #141419; border-radius: 8px; border: 1px solid #2d2d38;">
    <div style="display: flex; justify-content: space-between; margin-bottom: 8px;">
      <span style="color: #a0a0b0;">Solve Phase Gas Required:</span>
      <span id="resRbSolve" style="color: #fff; font-weight: bold;">420 L</span>
    </div>
    <div style="display: flex; justify-content: space-between; margin-bottom: 8px;">
      <span style="color: #a0a0b0;">Ascent Phase Gas Required:</span>
      <span id="resRbAscent" style="color: #fff; font-weight: bold;">539 L</span>
    </div>
    <div style="display: flex; justify-content: space-between; margin-bottom: 8px;">
      <span style="color: #a0a0b0;">5m Safety Stop Gas Required:</span>
      <span id="resRbSafety" style="color: #fff; font-weight: bold;">315 L</span>
    </div>
    <div style="border-top: 1px solid #2d2d38; margin: 10px 0; padding-top: 10px; display: flex; justify-content: space-between; margin-bottom: 8px;">
      <span style="color: #a0a0b0; font-weight: bold;">Total Panic Gas Volume Required:</span>
      <span id="resRbTotalVol" style="color: #ff4a4a; font-weight: bold; font-size: 1.1em;">1274 L</span>
    </div>
    <div style="display: flex; justify-content: space-between;">
      <span style="color: #a0a0b0; font-weight: bold;">Minimum Single Tank Reserve (Rock Bottom):</span>
      <span id="resRbTotalPress" style="color: #00ff88; font-weight: bold; font-size: 1.25em;">115 bar</span>
    </div>
  </div>
</div>

<script>
function calculateRockBottom() {
  var depth = parseFloat(document.getElementById('rbDepth').value);
  var rmv = parseFloat(document.getElementById('rbRmv').value);
  var solveTime = parseFloat(document.getElementById('rbSolveTime').value);
  var ascentRate = parseFloat(document.getElementById('rbAscentRate').value);
  var safetyStop = parseFloat(document.getElementById('rbSafetyStop').value);
  var vol = parseFloat(document.getElementById('rbCylVol').value);
  
  if (isNaN(depth) || isNaN(rmv) || isNaN(solveTime) || isNaN(ascentRate) || isNaN(safetyStop) || isNaN(vol) ||
      depth < 0 || rmv <= 0 || solveTime < 0 || ascentRate <= 0 || safetyStop < 0 || vol <= 0) {
    alert('Please enter valid positive numbers!');
    return;
  }
  
  var doubleRmv = rmv * 2; // Two divers sharing gas
  
  // 1. Solve phase
  var maxAta = (depth / 10) + 1;
  var solveGas = doubleRmv * maxAta * solveTime;
  
  // 2. Ascent phase (from depth to 5m)
  var ascentTime = (depth - 5) / ascentRate;
  var avgAscentDepth = (depth + 5) / 2;
  var avgAscentAta = (avgAscentDepth / 10) + 1;
  var ascentGas = 0;
  if (ascentTime > 0) {
    ascentGas = doubleRmv * avgAscentAta * ascentTime;
  }
  
  // 3. Safety stop phase (at 5m = 1.5 ATA)
  var safetyGas = doubleRmv * 1.5 * safetyStop;
  
  var totalGas = solveGas + ascentGas + safetyGas;
  var press = totalGas / vol;
  
  document.getElementById('resRbSolve').innerText = Math.round(solveGas) + ' L';
  document.getElementById('resRbAscent').innerText = Math.round(ascentGas) + ' L';
  document.getElementById('resRbSafety').innerText = Math.round(safetyGas) + ' L';
  document.getElementById('resRbTotalVol').innerText = Math.round(totalGas) + ' L';
  document.getElementById('resRbTotalPress').innerText = Math.ceil(press) + ' bar';
}
</script>

> ⚠️ **Key Safety Conclusions**:
> *   At 30 meters, your left and right cylinders **must never drop below 115 bar**. If a catastrophic failure occurs on one side, the remaining side will not support a safe double-diver ascent!
> *   **Rock Bottom Precedence**: As depth increases, your calculated Rock Bottom (115 bar) can exceed standard 1/3 rules (e.g., on a 200 bar tank, 1/3 is 66 bar). In this case, **your gas plan must default to the Rock Bottom limit**, yielding an available gas pressure of $200 - 115 = 85 \text{ bar}$, rather than 133 bar. This is a critical safety rule [1][6].

---

## 📊 Volume Matching vs. Pressure Matching

In sidemount, **pressure does not equal gas volume**. Pressure is an intensive property, while gas volume is an extensive property [1][7].

### 1. Gas Volume Calculation
$$\text{Gas Volume (L)} = \text{Internal Volume (L)} \times \text{Pressure (bar)}$$

### 2. Matching Asymmetric Cylinder Sizes
If you carry different cylinder sizes (e.g., left: 12L steel, right: 11.1L AL80), even if both are filled to 200 bar, their actual gas volumes differ [1][7]:
*   **Left 12L Steel**: $12\text{ L} \times 200\text{ bar} = 2400 \text{ Liters of gas}$
*   **Right 11.1L Aluminum**: $11.1\text{ L} \times 200\text{ bar} = 2220 \text{ Liters of gas}$

**Gas Planning Rules**:
*   **You must calculate your gas plan using the smaller cylinder volume (2220 L) as your baseline** [1][7].
*   Under the 1/3 rule, the usable volume is $2220\text{ L} \times \frac{1}{3} = 740 \text{ Liters}$.
*   When converting this volume back to the 12L steel tank's pressure profile: divide 740 L by 12L, meaning you must turn the dive when the steel tank drops to $200 - \frac{740}{12} \approx 138 \text{ bar}$, rather than 133 bar. This ensures safe gas reserves on both sides [7].

> 📋 **Notes & Assumptions**
> *   Calculations assume ideal gas behavior (Volume = Internal Volume × Pressure); at high pressures (>200 bar), real-gas compressibility reduces actual gas volume. Plan conservatively.
> *   Always match based on the **smallest cylinder capacity**. If cylinders have different buoyancy curves, coordinate trim and Rock Bottom accordingly.
> *   Use the most conservative protocol for overhead environments (1/3 rule minimum; high-flow cave systems should adopt the Rule of Sixths, see above).

---

## 📚 References

1. **Sidemount Book (Rob Neto)** - *Sidemount Gas Management*: Redundancy models for independent cylinder systems, pressure switch intervals, and backup gas calculations. [Link](https://sidemountbook.com/articles/sidemount-gas-management/)
2. **TDI/SDI** - *Breaking the Rule of Thirds: Gas Management for Sidemount*: Application and limits of the 1/3 rule and rotational pressure switches in non-manifolded double-cylinder configurations. [Link](https://www.tdisdi.com/tdi-diver-news/breaking-the-rule-of-thirds-gas-management-for-sidemount/)
3. **ProTec Dive Centers** - *Avoiding Breathing Gas Emergencies*: Cave diving 1/3 rules, team gas matching based on the smallest cylinder volume, and conservative planning. [Link](https://protecdivecenters.com/blog/avoiding-breathing-gas-emergencies/)
4. **ScubaBoard Forum** - *Rule of 6th's????*: Practical application of the Rule of Sixths and rotational pressure switches in sidemount trim (community source for reference). [Link](https://scubaboard.com/community/threads/rule-of-6ths.342736/)
5. **Wikipedia** - *Rule of thirds (diving)*: Definition of the 1/3 rule, application requirements, and correction factors for asymmetric cylinder matching. [Link](https://en.wikipedia.org/wiki/Rule_of_thirds_(diving))
6. **Thinking Diver** - *Rock Bottom Gas Planning for Recreational Diving*: Mathematical models and tables for depth, RMV, and buddy gas-sharing ascent rates. [Link](https://www.thinkingdiver.com/rock-bottom-gas-planning-recreational-diving/)
7. **Scuba Tech Philippines (Andy Davis)** - *Scuba Gas Planning: Gas Management For Divers*: Rock Bottom calculations, cylinder volume conversions, and multi-level depth reserve planning. [Link](https://scubatechphilippines.com/scuba_blog/scuba-gas-planning-management-divers/)

> ⚠️ Note on Citations: Source [2] from tdisdi.com employs anti-scraping mechanisms (403); contents verified via search engine index.
