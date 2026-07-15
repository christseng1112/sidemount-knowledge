---
title: Nitrox Basics & MOD Calculation
tags:
  - sidemount/gas-management
  - status/completed
---

# Nitrox Basics & MOD Calculation (EANx Fundamentals & MOD)

While [[en/40_Gas_Management/Oxygen Exposure & Nitrogen Narcosis Management|Oxygen Exposure & Nitrogen Narcosis Management]] covers the tracking of oxygen dosage, this article focuses on the entry-level fundamentals: **what Nitrox (EANx) is, how to calculate MOD, and how to choose the Best Mix**. In sidemount diving, the two cylinders are independent, which means they can carry different mixtures. This makes MOD discipline far more critical than in single-cylinder diving (the risks of switching to the wrong cylinder are detailed in [[en/40_Gas_Management/Sidemount Gas Switching Procedures|Sidemount Gas Switching Procedures]]).

---

## 💨 What is Nitrox & Why Use It?

EANx refers to Enriched Air Nitrox, a gas mixture containing an oxygen percentage higher than 21% (e.g., EAN32 contains 32% O₂). **You substitute nitrogen with more oxygen to achieve**:

*   **Benefit**: Lower nitrogen absorption at depth $\rightarrow$ longer No-Decompression Limits (NDLs) and shorter, more efficient surface intervals for repetitive dives.
*   **Cost**: Oxygen partial pressure (PO₂) rises with depth, meaning the **Maximum Operating Depth (MOD) is shallower than air**—exceeding this limit exposes the diver to central nervous system (CNS) oxygen toxicity and convulsions, which in the water almost always leads to drowning [1][2].
*   Nitrox **does not reduce nitrogen narcosis** (Equivalent Narcotic Depth, or END, is determined by the total narcotic gas fraction; see [[en/40_Gas_Management/Oxygen Exposure & Nitrogen Narcosis Management|Oxygen Exposure & Nitrogen Narcosis Management]]), and it **does not allow you to dive deeper**—it does the opposite.

---

## 📐 Three Core Formulas (Metric)

Ambient pressure $P \text{ (ata)} = \frac{\text{Depth (m)}}{10} + 1$; Partial pressure $PO_2 = FO_2 \times P$.

### 1. Maximum Operating Depth (MOD)
$$MOD(m) = \left(\frac{PO_2\,limit}{FO_2} - 1\right) \times 10$$

### 2. Best Mix
$$FO_2 = \frac{PO_2\,limit}{\text{Depth (m)} / 10 + 1}$$

### 3. Equivalent Air Depth (EAD)
$$EAD(m) = \left(\frac{FN_2}{0.79} \times \left(\frac{\text{Depth}}{10}+1\right) - 1\right) \times 10$$

**PO₂ Limits**: Use **1.4 ata** for the active/working portion of the dive, and **1.6 ata** as the absolute contingency limit. 1.6 ata is also the standard limit for resting decompression stops (low physical exertion), as detailed in [[en/60_Advanced/Decompression Stop Practice & Oxygen Deco|Decompression Stop Practice & Oxygen Deco]] [1][2][3].

### Sample Calculations
*   For EAN32 at a PO₂ of 1.4: $MOD = (\frac{1.4}{0.32} - 1) \times 10 = \mathbf{33.8 \text{ meters}}$ (Contingency at 1.6 yields 40m).
*   For a planned depth of 25 meters, the Best Mix is: $FO_2 = \frac{1.4}{3.5} = \mathbf{40\%}$. Select a mix between EAN36 and EAN40, then recalculate and verify the MOD.

---

<div style="background: #1e1e24; border: 1px solid #3a3a4a; border-radius: 12px; padding: 20px; margin: 25px 0; color: #f0f0f5; font-family: system-ui, sans-serif; box-shadow: 0 4px 15px rgba(0,0,0,0.3);">
  <h3 style="color: #00d2ff; margin-top: 0; border-bottom: 1px solid #3a3a4a; padding-bottom: 8px; font-weight: 600;">🧮 Interactive Nitrox Core Calculator</h3>
  
  <div style="display: flex; gap: 10px; margin-bottom: 20px; border-bottom: 1px solid #2d2d38; padding-bottom: 10px;">
    <button onclick="switchTab('mod')" id="tab-mod" style="background: #0072ff; border: none; border-radius: 4px; color: white; padding: 6px 12px; font-weight: bold; cursor: pointer; transition: background 0.2s;">MOD Calculation</button>
    <button onclick="switchTab('best')" id="tab-best" style="background: #2d2d38; border: none; border-radius: 4px; color: #a0a0b0; padding: 6px 12px; font-weight: bold; cursor: pointer; transition: background 0.2s;">Best Mix Calculation</button>
    <button onclick="switchTab('ead')" id="tab-ead" style="background: #2d2d38; border: none; border-radius: 4px; color: #a0a0b0; padding: 6px 12px; font-weight: bold; cursor: pointer; transition: background 0.2s;">EAD Calculation</button>
  </div>

  <div id="sect-mod">
    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 15px; margin-bottom: 15px;">
      <div>
        <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">Oxygen Fraction FO₂ (%)</label>
        <input type="number" id="modFo2" value="32" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
      </div>
      <div>
        <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">Max ppO₂ Limit (ata)</label>
        <input type="number" id="modPpo2" value="1.4" step="0.1" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
      </div>
    </div>
    <button onclick="calcMod()" style="background: linear-gradient(135deg, #00d2ff, #0072ff); border: none; border-radius: 6px; color: white; padding: 10px 20px; font-weight: bold; cursor: pointer; width: 100%;">Calculate MOD</button>
    <div style="margin-top: 15px; padding: 12px; background: #141419; border-radius: 6px; border: 1px solid #2d2d38; text-align: center;">
      <span style="color: #a0a0b0;">Max Operating Depth (MOD): </span>
      <span id="resMod" style="color: #00ff88; font-weight: bold; font-size: 1.2em;">33.8 m</span>
    </div>
  </div>

  <div id="sect-best" style="display:none;">
    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 15px; margin-bottom: 15px;">
      <div>
        <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">Planned Max Depth (m)</label>
        <input type="number" id="bestDepth" value="25" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
      </div>
      <div>
        <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">Target ppO₂ (ata)</label>
        <input type="number" id="bestPpo2" value="1.4" step="0.1" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
      </div>
    </div>
    <button onclick="calcBest()" style="background: linear-gradient(135deg, #00d2ff, #0072ff); border: none; border-radius: 6px; color: white; padding: 10px 20px; font-weight: bold; cursor: pointer; width: 100%;">Calculate Best Mix</button>
    <div style="margin-top: 15px; padding: 12px; background: #141419; border-radius: 6px; border: 1px solid #2d2d38; text-align: center;">
      <span style="color: #a0a0b0;">Best Oxygen Fraction (FO₂): </span>
      <span id="resBest" style="color: #00ff88; font-weight: bold; font-size: 1.2em;">40.0%</span>
    </div>
  </div>

  <div id="sect-ead" style="display:none;">
    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 15px; margin-bottom: 15px;">
      <div>
        <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">Planned Depth (m)</label>
        <input type="number" id="eadDepth" value="30" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
      </div>
      <div>
        <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">Oxygen Fraction FO₂ (%)</label>
        <input type="number" id="eadFo2" value="32" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
      </div>
    </div>
    <button onclick="calcEad()" style="background: linear-gradient(135deg, #00d2ff, #0072ff); border: none; border-radius: 6px; color: white; padding: 10px 20px; font-weight: bold; cursor: pointer; width: 100%;">Calculate EAD</button>
    <div style="margin-top: 15px; padding: 12px; background: #141419; border-radius: 6px; border: 1px solid #2d2d38; text-align: center;">
      <span style="color: #a0a0b0;">Equivalent Air Depth (EAD): </span>
      <span id="resEad" style="color: #00ff88; font-weight: bold; font-size: 1.2em;">24.4 m</span>
    </div>
  </div>
</div>

<script>
function switchTab(tab) {
  document.getElementById('sect-mod').style.display = tab === 'mod' ? 'block' : 'none';
  document.getElementById('sect-best').style.display = tab === 'best' ? 'block' : 'none';
  document.getElementById('sect-ead').style.display = tab === 'ead' ? 'block' : 'none';
  
  document.getElementById('tab-mod').style.background = tab === 'mod' ? '#0072ff' : '#2d2d38';
  document.getElementById('tab-mod').style.color = tab === 'mod' ? 'white' : '#a0a0b0';
  document.getElementById('tab-best').style.background = tab === 'best' ? '#0072ff' : '#2d2d38';
  document.getElementById('tab-best').style.color = tab === 'best' ? 'white' : '#a0a0b0';
  document.getElementById('tab-ead').style.background = tab === 'ead' ? '#0072ff' : '#2d2d38';
  document.getElementById('tab-ead').style.color = tab === 'ead' ? 'white' : '#a0a0b0';
}

function calcMod() {
  var fo2 = parseFloat(document.getElementById('modFo2').value) / 100;
  var ppo2 = parseFloat(document.getElementById('modPpo2').value);
  if (isNaN(fo2) || isNaN(ppo2) || fo2 <= 0 || ppo2 <= 0) {
    alert('Please enter valid values!');
    return;
  }
  var mod = ((ppo2 / fo2) - 1) * 10;
  document.getElementById('resMod').innerText = mod.toFixed(1) + ' m';
}

function calcBest() {
  var depth = parseFloat(document.getElementById('bestDepth').value);
  var ppo2 = parseFloat(document.getElementById('bestPpo2').value);
  if (isNaN(depth) || isNaN(ppo2) || depth < 0 || ppo2 <= 0) {
    alert('Please enter valid values!');
    return;
  }
  var ata = (depth / 10) + 1;
  var bestFo2 = (ppo2 / ata) * 100;
  document.getElementById('resBest').innerText = bestFo2.toFixed(1) + '%';
}

function calcEad() {
  var depth = parseFloat(document.getElementById('eadDepth').value);
  var fo2 = parseFloat(document.getElementById('eadFo2').value) / 100;
  if (isNaN(depth) || isNaN(fo2) || depth < 0 || fo2 <= 0 || fo2 > 1) {
    alert('Please enter valid values!');
    return;
  }
  var fn2 = 1 - fo2;
  var ead = ((fn2 / 0.79) * ((depth / 10) + 1) - 1) * 10;
  document.getElementById('resEad').innerText = Math.max(0, ead).toFixed(1) + ' m';
}
</script>

> 📋 **Notes & Assumptions**: Formulas assume ideal saltwater density (1 bar per 10m). Freshwater or high-altitude dive sites require custom local environmental calculations. Always use **actual measured analysis values** from your gas analyzer rather than station nominal numbers.

---

## 🏷️ Sidemount Implementation Discipline

1.  **Analyze and Mark Both Cylinders Independently**: Labeling and analyzing protocols are covered in [[en/40_Gas_Management/Gas Analysis & Cylinder Labeling|Gas Analysis & Cylinder Labeling]]—clearly write the MOD on each cylinder.
2.  **MOD is a Hard Ceiling**: Program your dive computers with appropriate FO₂ and PO₂ alarms (see [[en/20_Equipment/Dive Computers & Transmitter Configuration|Dive Computers & Transmitter Configuration]]). If your planned depth is close to the MOD, switch to a lower FO₂ mixture to build a safety buffer.
3.  **Identical Mixtures are the Baseline**: Recreational sidemount assumes both cylinders hold identical mixtures, eliminating the risk of a deep-water gas switch error. Advanced configurations using travel or decompression cylinders belong to the technical realm, as detailed in [[en/60_Advanced/Technical Sidemount Setup & Stage Rigging|Technical Sidemount Setup & Stage Rigging]].
4.  **CNS Clock Management**: Diving within your MOD does not mean infinite exposure—track oxygen accumulation limits as detailed in [[en/40_Gas_Management/Oxygen Exposure & Nitrogen Narcosis Management|Oxygen Exposure & Nitrogen Narcosis Management]].

---

## 📚 References

1. **Viking Dives** - *Nitrox MOD/EAD/Best Mix – Learn to Love the Math!*: Deriving and memorizing the three core formulas for MOD, EAD, and Best Mix, along with 1.4/1.6 ppO₂ limits. [Link](https://vikingdives.com/nitrox-mod-ead-best-mix-learn-to-love-the-math/)
2. **iDive Florida** - *Nitrox EAN Best Mix at 1.4 ata*: Interactive Best Mix tables and MOD/COD threshold comparison charts. [Link](https://idiveflorida.com/NitroxEANBestMix.php)
3. **Wikipedia** - *Decompression practice*: The standard open-circuit ppO₂ limit of 1.6 bar (e.g., 100% O₂ at 6 msw) in decompression diving. [Link](https://en.wikipedia.org/wiki/Decompression_practice)
