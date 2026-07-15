---
title: 高氧 Nitrox 基礎與 MOD 計算
tags:
  - sidemount/gas-management
  - status/completed
---

# 高氧 Nitrox 基礎與 MOD 計算 (EANx Fundamentals & MOD)

本庫的 [[氧暴露與氮醉管理 (CNS、OTU、END)]] 講「氧的劑量帳戶」，本篇補上前置的入門層：**高氧（Nitrox / EANx）是什麼、MOD 怎麼算、最佳混氣怎麼選**。側掛雙瓶各自獨立，兩瓶可以是不同混氣——這讓 MOD 紀律比單瓶潛水更重要，切錯瓶的後果見 [[側掛氣體切換標準程序]]。

---

## 💨 Nitrox 是什麼、換來什麼

EANx = 氧比例高於 21% 的氮氧混合氣（EAN32 = 32% O₂）。**用更多的氧換掉氮**：

*   **好處**：同深度下氮負載較低 → 免減壓時間更長、重複潛水水面間隔更有效率。
*   **代價**：氧分壓（PO₂）隨深度上升，**深度上限（MOD）比空氣淺**——超過就進入中樞神經氧中毒（CNS）抽搐風險區，水下抽搐幾乎等於溺水 [1][2]。
*   Nitrox **不減氮醉**（END 由總麻醉性氣體決定，見 [[氧暴露與氮醉管理 (CNS、OTU、END)]]）、**不讓你潛更深**——恰恰相反。

---

## 📐 三個公式（公制）

環境壓力 P(ata) = 深度(m)/10 + 1；PO₂ = FO₂ × P。

### 1. MOD（Maximum Operating Depth，最大操作深度）
$$MOD(m) = \left(\frac{PO_2\,limit}{FO_2} - 1\right) \times 10$$

### 2. 最佳混氣（Best Mix）
$$FO_2 = \frac{PO_2\,limit}{深度(m)/10 + 1}$$

### 3. EAD（Equivalent Air Depth，等效空氣深度）
$$EAD(m) = \left(\frac{FN_2}{0.79} \times \left(\frac{深度}{10}+1\right) - 1\right) \times 10$$

**PO₂ 上限**：計劃工作段 **1.4 ata**；緊急備援上限（Contingency）**1.6 ata**——1.6 同時是減壓停留段的傳統上限（休息狀態、低運動量前提），見 [[減壓停留實務執行與氧氣減壓]] [1][2][3]。

### 例算
> EAN32、PO₂ 1.4：MOD = (1.4/0.32 − 1) × 10 = **33.8 米**；Contingency 1.6 → 40 米。
> 計劃深度 25 米的最佳混氣：FO₂ = 1.4/3.5 = **40%** → 取 EAN36–40 之間的可得混氣，MOD 再回算驗證。

<div style="background: #1e1e24; border: 1px solid #3a3a4a; border-radius: 12px; padding: 20px; margin: 25px 0; color: #f0f0f5; font-family: system-ui, sans-serif; box-shadow: 0 4px 15px rgba(0,0,0,0.3);">
  <h3 style="color: #00d2ff; margin-top: 0; border-bottom: 1px solid #3a3a4a; padding-bottom: 8px; font-weight: 600;">🧮 互動式 Nitrox 核心計算機</h3>
  
  <div style="display: flex; gap: 10px; margin-bottom: 20px; border-bottom: 1px solid #2d2d38; padding-bottom: 10px;">
    <button onclick="switchTab('mod')" id="tab-mod" style="background: #0072ff; border: none; border-radius: 4px; color: white; padding: 6px 12px; font-weight: bold; cursor: pointer; transition: background 0.2s;">MOD 計算</button>
    <button onclick="switchTab('best')" id="tab-best" style="background: #2d2d38; border: none; border-radius: 4px; color: #a0a0b0; padding: 6px 12px; font-weight: bold; cursor: pointer; transition: background 0.2s;">Best Mix 計算</button>
    <button onclick="switchTab('ead')" id="tab-ead" style="background: #2d2d38; border: none; border-radius: 4px; color: #a0a0b0; padding: 6px 12px; font-weight: bold; cursor: pointer; transition: background 0.2s;">EAD 計算</button>
  </div>

  <div id="sect-mod">
    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 15px; margin-bottom: 15px;">
      <div>
        <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">氧氣比例 FO₂ (%)</label>
        <input type="number" id="modFo2" value="32" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
      </div>
      <div>
        <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">氧分壓上限 ppO₂ (ata)</label>
        <input type="number" id="modPpo2" value="1.4" step="0.1" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
      </div>
    </div>
    <button onclick="calcMod()" style="background: linear-gradient(135deg, #00d2ff, #0072ff); border: none; border-radius: 6px; color: white; padding: 10px 20px; font-weight: bold; cursor: pointer; width: 100%;">計算 MOD</button>
    <div style="margin-top: 15px; padding: 12px; background: #141419; border-radius: 6px; border: 1px solid #2d2d38; text-align: center;">
      <span style="color: #a0a0b0;">最大作業深度 (MOD): </span>
      <span id="resMod" style="color: #00ff88; font-weight: bold; font-size: 1.2em;">33.8 m</span>
    </div>
  </div>

  <div id="sect-best" style="display:none;">
    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 15px; margin-bottom: 15px;">
      <div>
        <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">計畫最大深度 (m)</label>
        <input type="number" id="bestDepth" value="25" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
      </div>
      <div>
        <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">氧分壓目標 ppO₂ (ata)</label>
        <input type="number" id="bestPpo2" value="1.4" step="0.1" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
      </div>
    </div>
    <button onclick="calcBest()" style="background: linear-gradient(135deg, #00d2ff, #0072ff); border: none; border-radius: 6px; color: white; padding: 10px 20px; font-weight: bold; cursor: pointer; width: 100%;">計算 Best Mix</button>
    <div style="margin-top: 15px; padding: 12px; background: #141419; border-radius: 6px; border: 1px solid #2d2d38; text-align: center;">
      <span style="color: #a0a0b0;">最佳氧氣比例 (FO₂): </span>
      <span id="resBest" style="color: #00ff88; font-weight: bold; font-size: 1.2em;">40.0%</span>
    </div>
  </div>

  <div id="sect-ead" style="display:none;">
    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 15px; margin-bottom: 15px;">
      <div>
        <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">計畫深度 (m)</label>
        <input type="number" id="eadDepth" value="30" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
      </div>
      <div>
        <label style="display: block; font-size: 0.85em; color: #a0a0b0; margin-bottom: 5px;">氧氣比例 FO₂ (%)</label>
        <input type="number" id="eadFo2" value="32" style="width: 100%; background: #2d2d38; border: 1px solid #4a4a5a; border-radius: 6px; padding: 8px; color: #fff; outline: none; box-sizing: border-box;">
      </div>
    </div>
    <button onclick="calcEad()" style="background: linear-gradient(135deg, #00d2ff, #0072ff); border: none; border-radius: 6px; color: white; padding: 10px 20px; font-weight: bold; cursor: pointer; width: 100%;">計算 EAD</button>
    <div style="margin-top: 15px; padding: 12px; background: #141419; border-radius: 6px; border: 1px solid #2d2d38; text-align: center;">
      <span style="color: #a0a0b0;">等效空氣深度 (EAD): </span>
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
    alert('請輸入有效數值！');
    return;
  }
  var mod = ((ppo2 / fo2) - 1) * 10;
  document.getElementById('resMod').innerText = mod.toFixed(1) + ' m';
}

function calcBest() {
  var depth = parseFloat(document.getElementById('bestDepth').value);
  var ppo2 = parseFloat(document.getElementById('bestPpo2').value);
  if (isNaN(depth) || isNaN(ppo2) || depth < 0 || ppo2 <= 0) {
    alert('請輸入有效數值！');
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
    alert('請輸入有效數值！');
    return;
  }
  var fn2 = 1 - fo2;
  var ead = ((fn2 / 0.79) * ((depth / 10) + 1) - 1) * 10;
  document.getElementById('resEad').innerText = Math.max(0, ead).toFixed(1) + ' m';
}
</script>

> 📋 **假設與限制**：公式以海水、每 10 米 1 bar 之理想近似計算；淡水與高海拔潛點（如高山湖泊）環境壓力不同，MOD 應保守化。混氣百分比以**自己實測的分析值**代入，不是氣站宣稱值。

---

## 🏷️ 側掛實務紀律

1.  **兩瓶都親自分析、親自標示**：分析儀操作與標籤規範見 [[氣體分析與氣瓶標示實務]]——側掛雙瓶內容不同時，MOD 直接寫在瓶身可視處。
2.  **MOD 是硬限制**：潛水電腦設好各瓶 FO₂ 與 PO₂ 警報（見 [[潛水電腦與無線氣體整合配置]]）；計劃深度貼著 MOD 時，改用更低 FO₂ 的混氣換餘裕。
3.  **雙瓶同氣是預設**：休閒側掛兩瓶灌同一混氣，消除切換錯瓶的深度風險；異氣配置（旅行瓶/減壓瓶）屬技術範疇，見 [[多氣瓶與減壓瓶掛載配置 (Technical Sidemount)]]。
4.  **CNS 時鐘照算**：MOD 內不代表無限暢飲——累積氧暴露照 [[氧暴露與氮醉管理 (CNS、OTU、END)]] 記帳。

---

## 📚 參考文獻與引用來源

1. **Viking Dives** - *Nitrox MOD/EAD/Best Mix – Learn to Love the Math!*: MOD/EAD/最佳混氣三公式之推導與記憶法、PO₂ 1.4 計劃上限與 1.6 備援門檻。 [連結](https://vikingdives.com/nitrox-mod-ead-best-mix-learn-to-love-the-math/)
2. **iDive Florida** - *Nitrox EAN Best Mix at 1.4 ata*: 最佳混氣公式（FO₂ = PO₂/P）與 MOD/COD（1.4/1.6）雙門檻對照表。 [連結](https://idiveflorida.com/NitroxEANBestMix.php)
3. **Wikipedia** - *Decompression practice*: 開放迴路 PO₂ 上限 1.6 bar（約當 100% O₂ 於 6 msw）之通行標準。 [連結](https://en.wikipedia.org/wiki/Decompression_practice)
