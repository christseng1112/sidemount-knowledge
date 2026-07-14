---
title: Gas Blending & High Pressure Filling Guide
tags:
  - sidemount/gas-management
  - status/completed
---

# Gas Blending & High Pressure Filling Guide (Gas Blending & Oxygen Safety)

In technical sidemount and deep diving, utilizing Nitrox and Trimix is standard practice. The accuracy of gas blending and the safety of high-pressure filling procedures are directly linked to water safety.

This article details the physical principles of partial pressure gas blending, real-gas compressibility offsets, and embeds an **"Interactive Partial Pressure Gas Blender"**. Finally, it outlines the critical safety standards for handling high-pressure oxygen and executing oxygen cleaning (O₂ Clean) [1][2].

---

## ⚖ 1. Physics of Partial Pressure Blending: Ideal Gas vs. Real Gas Deviations

Partial pressure blending involves adding pure helium, pure oxygen, and filtered air sequentially into a cylinder to achieve the target mix based on pressure calculations [1].

### Dalton's Law of Partial Pressures
According to Dalton's law, the total pressure of a gas mixture is equal to the sum of the partial pressures of its component gases [1]:
$$P_{total} = P_{O_2} + P_{He} + P_{N_2}$$
In an ideal gas state, the pressure added is directly proportional to the molar quantity of the gas.

### Real Gas Deviations & Compressibility Factor (Z)
Under pressures exceeding 200 bar, intermolecular forces and the physical volume of the gas molecules cause the gas to deviate from ideal behavior ($PV = nZRT$) [2][3]:
*   **Helium**: Helium molecules are extremely small and difficult to compress at high pressures ($Z > 1$). If you fill 70 bar of helium based on ideal gas equations, the measured helium percentage will be **lower than expected** (typically 1–3% lower) once the final pressure reaches 200 bar [2][3].
*   **Oxygen & Nitrogen**: High pressure makes these gases slightly easier to compress than helium ($Z < 1$).
*   **Blending Practice**: High-pressure gas compression generates heat, causing expansion. Blenders must wait for the cylinder to cool to ambient temperature (20°C) before taking final measurements with a gas analyzer (He/O₂ analyzer) and performing corrections [2][4].

---

## 🧮 2. Interactive Partial Pressure Gas Blender

The calculator below utilizes partial pressure formulas to calculate how to top up your cylinder with pure helium, pure oxygen, and air to reach a target mixture [1][5]:

<div style="background: #1e1e24; border: 1px solid #3a3a4a; border-radius: 12px; padding: 20px; margin: 25px 0; color: #f0f0f5; font-family: system-ui, sans-serif; box-shadow: 0 4px 15px rgba(0,0,0,0.3);">
  <h3 style="color: #00ff88; margin-top: 0; border-bottom: 1px solid #3a3a4a; padding-bottom: 8px; font-weight: 600;">⛽ Interactive Partial Pressure Gas Blender</h3>
  
  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(220px, 1fr)); gap: 20px; margin-bottom: 20px;">
    <!-- Current Cylinder Status -->
    <div style="background: #252530; padding: 15px; border-radius: 8px; border: 1px solid #2d2d38;">
      <h4 style="margin: 0 0 10px 0; color: #ff9f43; font-size: 0.95em;">1. Current Cylinder Status</h4>
      <div style="margin-bottom: 10px;">
        <label style="display: block; font-size: 0.8em; color: #a0a0b0; margin-bottom: 5px;">Current Pressure (bar)</label>
        <input type="number" id="curPress" value="20" style="width: 100%; background: #141419; border: 1px solid #4a4a5a; border-radius: 6px; padding: 6px; color: #fff; outline: none; box-sizing: border-box;">
      </div>
      <div style="margin-bottom: 10px;">
        <label style="display: block; font-size: 0.8em; color: #a0a0b0; margin-bottom: 5px;">Current Oxygen O₂ (%)</label>
        <input type="number" id="curO2" value="21" style="width: 100%; background: #141419; border: 1px solid #4a4a5a; border-radius: 6px; padding: 6px; color: #fff; outline: none; box-sizing: border-box;">
      </div>
      <div>
        <label style="display: block; font-size: 0.8em; color: #a0a0b0; margin-bottom: 5px;">Current Helium He (%)</label>
        <input type="number" id="curHe" value="0" style="width: 100%; background: #141419; border: 1px solid #4a4a5a; border-radius: 6px; padding: 6px; color: #fff; outline: none; box-sizing: border-box;">
      </div>
    </div>
    
    <!-- Target Gas Status -->
    <div style="background: #252530; padding: 15px; border-radius: 8px; border: 1px solid #2d2d38;">
      <h4 style="margin: 0 0 10px 0; color: #00ff88; font-size: 0.95em;">2. Target Gas Status</h4>
      <div style="margin-bottom: 10px;">
        <label style="display: block; font-size: 0.8em; color: #a0a0b0; margin-bottom: 5px;">Target Total Pressure (bar)</label>
        <input type="number" id="tgtPress" value="200" style="width: 100%; background: #141419; border: 1px solid #4a4a5a; border-radius: 6px; padding: 6px; color: #fff; outline: none; box-sizing: border-box;">
      </div>
      <div style="margin-bottom: 10px;">
        <label style="display: block; font-size: 0.8em; color: #a0a0b0; margin-bottom: 5px;">Target Oxygen O₂ (%)</label>
        <input type="number" id="tgtO2" value="21" style="width: 100%; background: #141419; border: 1px solid #4a4a5a; border-radius: 6px; padding: 6px; color: #fff; outline: none; box-sizing: border-box;">
      </div>
      <div>
        <label style="display: block; font-size: 0.8em; color: #a0a0b0; margin-bottom: 5px;">Target Helium He (%)</label>
        <input type="number" id="tgtHe" value="35" style="width: 100%; background: #141419; border: 1px solid #4a4a5a; border-radius: 6px; padding: 6px; color: #fff; outline: none; box-sizing: border-box;">
      </div>
    </div>
  </div>
  
  <button onclick="calculateBlending()" style="background: linear-gradient(135deg, #00ff88, #00b359); border: none; border-radius: 6px; color: #141419; padding: 12px 20px; font-weight: bold; cursor: pointer; transition: opacity 0.2s; width: 100%; font-size: 1em;">Calculate Blending Steps</button>
  
  <div id="blendResultBlock" style="margin-top: 20px; padding: 15px; background: #141419; border-radius: 8px; border: 1px solid #2d2d38; display: none;">
    <h4 style="margin: 0 0 12px 0; border-bottom: 1px solid #2d2d38; padding-bottom: 6px; color: #00ff88;">📋 Blending Steps Summary (Metric bar)</h4>
    <div style="display: flex; justify-content: space-between; margin-bottom: 8px;">
      <span style="color: #a0a0b0;">1. Current Residual Pressure:</span>
      <span id="resCurPress" style="color: #fff; font-weight: bold;">-</span>
    </div>
    <div style="display: flex; justify-content: space-between; margin-bottom: 8px;">
      <span style="color: #a0a0b0;">2. Fill Pure Helium (He) up to:</span>
      <span id="resAddHe" style="color: #fff; font-weight: bold;">-</span>
    </div>
    <div style="display: flex; justify-content: space-between; margin-bottom: 8px;">
      <span style="color: #a0a0b0;">3. Fill Pure Oxygen (O₂) up to:</span>
      <span id="resAddO2" style="color: #fff; font-weight: bold;">-</span>
    </div>
    <div style="display: flex; justify-content: space-between; margin-bottom: 8px;">
      <span style="color: #a0a0b0;">4. Top-up with filtered Air to Target total pressure:</span>
      <span id="resAddAir" style="color: #00ff88; font-weight: bold;">-</span>
    </div>
    <div style="border-top: 1px solid #2d2d38; margin: 10px 0; padding-top: 10px; font-size: 0.85em; color: #ff9f43;" id="blendWarning">
      ⚠️ The order of oxygen and helium can be swapped based on gas station setup. Always fill high-pressure pure oxygen extremely slowly!
    </div>
  </div>
</div>

<script>
function calculateBlending() {
  var pStart = parseFloat(document.getElementById('curPress').value);
  var fO2Start = parseFloat(document.getElementById('curO2').value) / 100.0;
  var fHeStart = parseFloat(document.getElementById('curHe').value) / 100.0;
  var pTarget = parseFloat(document.getElementById('tgtPress').value);
  var fO2Target = parseFloat(document.getElementById('tgtO2').value) / 100.0;
  var fHeTarget = parseFloat(document.getElementById('tgtHe').value) / 100.0;
  
  var resultBlock = document.getElementById('blendResultBlock');
  var warningDiv = document.getElementById('blendWarning');
  
  if (isNaN(pStart) || isNaN(fO2Start) || isNaN(fHeStart) || isNaN(pTarget) || isNaN(fO2Target) || isNaN(fHeTarget) ||
      pStart < 0 || fO2Start < 0 || fHeStart < 0 || pTarget <= pStart || fO2Target < 0 || fHeTarget < 0) {
    alert('Please enter valid values! Target total pressure must be greater than current pressure.');
    return;
  }
  
  var fN2Start = 1.0 - fO2Start - fHeStart;
  var fN2Target = 1.0 - fO2Target - fHeTarget;
  
  if (fN2Start < 0 || fN2Target < 0) {
    alert('The sum of oxygen and helium cannot exceed 100%!');
    return;
  }
  
  // Formulas:
  // 1. Added Helium pressure
  var pHeAdd = (pTarget * fHeTarget) - (pStart * fHeStart);
  
  // 2. Added Air pressure (based on Nitrogen matching)
  var pAirAdd = ((pTarget * fN2Target) - (pStart * fN2Start)) / 0.79;
  
  // 3. Added Oxygen pressure
  var pO2Add = pTarget - pStart - pHeAdd - pAirAdd;
  
  resultBlock.style.display = 'block';
  warningDiv.style.color = '#ff9f43';
  warningDiv.innerText = '⚠️ The order of oxygen and helium can be swapped based on gas station setup. Always fill high-pressure pure oxygen extremely slowly!';
  
  if (pHeAdd < -0.01 || pAirAdd < -0.01 || pO2Add < -0.01) {
    document.getElementById('resCurPress').innerText = pStart + ' bar';
    document.getElementById('resAddHe').innerText = 'Cannot calculate';
    document.getElementById('resAddO2').innerText = 'Cannot calculate';
    document.getElementById('resAddAir').innerText = 'Cannot calculate';
    warningDiv.style.color = '#ff4a4a';
    warningDiv.innerText = '🚨 Direct top-up impossible! The helium, nitrogen, or oxygen partial pressure in the target gas is lower than what the residual gas provides. Please vent the cylinder to a lower pressure and recalculate.';
    return;
  }
  
  pHeAdd = Math.max(0, pHeAdd);
  pAirAdd = Math.max(0, pAirAdd);
  pO2Add = Math.max(0, pO2Add);
  
  var step1 = pStart;
  var step2 = step1 + pHeAdd;
  var step3 = step2 + pO2Add;
  var step4 = pTarget; // top-up with air
  
  document.getElementById('resCurPress').innerText = pStart.toFixed(1) + ' bar';
  document.getElementById('resAddHe').innerText = 'Fill He up to ' + step2.toFixed(1) + ' bar (fill ' + pHeAdd.toFixed(1) + ' bar He)';
  document.getElementById('resAddO2').innerText = 'Fill O₂ up to ' + step3.toFixed(1) + ' bar (fill ' + pO2Add.toFixed(1) + ' bar O₂)';
  document.getElementById('resAddAir').innerText = 'Fill Air up to ' + step4.toFixed(1) + ' bar (fill ' + pAirAdd.toFixed(1) + ' bar Air)';
}
</script>

---

## 🧯 3. High-Pressure Oxygen Safety & Oxygen Cleaning (O₂ Cleaning)

Blending Nitrox or Trimix requires injecting **high-pressure oxygen (up to 99% purity)** directly into scuba cylinders. High-pressure oxygen is a powerful oxidizer, and contact with hydrocarbons (such as industrial grease, compressor oils, or skin oils) can trigger violent combustion and explosions [1][4].

### Oxygen Clean Standards (O₂ Clean)
Any equipment exposed to elevated oxygen levels (fraction $>40\%$ or partial pressure $>0.4$ bar) must undergo oxygen cleaning [4]:
1.  **Thorough Degreasing**: Clean regulator first stages, cylinder walls, and valves with dedicated degreasing solvents (such as high-purity isopropyl alcohol or oxygen-safe degreasers) to remove all traces of grease or skin oils [4][6].
2.  **Oxygen-Compatible O-Rings**: Replace standard Nitrile (Buna-N) O-rings with Fluorocarbon (Viton) or Polyurethane O-rings [4].
3.  **Oxygen-Compatible Lubrication**: **Never** use standard silicone lubricants; apply specialized fluorinated greases (such as **Christo-Lube MC111** or Krytox) [4][6].

### Safe Oxygen Filling SOPs
*   **Open Valves Slowly**: Always open the valves of oxygen supply cylinders or fill whips **extremely slowly**. Rapid oxygen flow hitting dead ends causes adiabatic compression, raising local temperatures to hundreds of degrees and instantly igniting metals or seals [1][4].
*   **Keep Dust out of Connections**: Seal all fittings with dust caps when not in use to prevent airborne dust or oil particles from entering the gas stream.
*   **Limit Fill Rate**: Restrict the oxygen flow rate during partial pressure blending to **less than 5 bar/minute (approx. 70 psi/minute)** to prevent frictional heating [1][4].

---

## 📚 References

1. **TDI (Technical Diving International)** - *The Art of Gas Blending*: Explaining partial pressure blending (Dalton's Law), continuous flow blending, and blending calculator logic. [Link](https://www.tdisdi.com/tdi-diver-news/the-art-of-gas-blending/)
2. **Divesoft** - *Real Gas Behavior and Compressibility in Diving*: Helium and oxygen compressibility factor (Z) deviations from ideal behavior at high pressures, and how to calibrate blends. [Link](https://www.divesoft.com/en/blog/real-gas-behavior-in-diving/)
3. **NASA Technical Reports Server** - *Compressibility Factors for Helium, Nitrogen, and Oxygen*: NASA experimental data on gas compressibility at high pressure (scientific background). [Link](https://ntrs.nasa.gov/citations/19710008852)
4. **DAN (Divers Alert Network)** - *Oxygen Compatibility and Cleanliness*: Definitions of oxygen cleanliness, ignition mechanisms (adiabatic compression, frictional heat), O₂ Clean procedures, and grease standards. [Link](https://dan.org/safety-prevention/diver-safety/equipment/oxygen-compatibility/)
5. **Wikipedia** - *Gas blending for scuba diving*: Gas blending equations, partial pressure sequencing (He $\rightarrow$ O₂ $\rightarrow$ Air), and residual gas algorithm logic. [Link](https://en.wikipedia.org/wiki/Gas_blending_for_scuba_diving)
6. **Dive Gear Express** - *Understanding Oxygen Cleaning for Scuba*: Practical procedures for degreasing, solvent selection, and O-ring materials. [Link](https://www.divegearexpress.com/library/articles/oxygen-cleaning/)

> ⚠️ Note on Citations: Source [1] from tdisdi.com employs anti-scraping mechanisms (403); contents verified via search engine index.
