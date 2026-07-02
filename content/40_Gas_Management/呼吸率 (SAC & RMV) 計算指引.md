---
title: 呼吸率 (SAC & RMV) 計算指引
tags:
  - sidemount/gas-management
  - status/completed
---

# 呼吸率 (SAC & RMV) 計算指引 (SAC & RMV Calculation Guide)

在獨立雙系統的側掛潛水中，精確掌握自己的呼吸率是氣體安全計劃的基石。不知道呼吸率，就無法推算在特定深度下的潛水限時，更無法計算緊急狀況下的保留氣體（Rock Bottom） [1][2]。

本篇將詳細區分**壓力呼吸率（SAC）**與**體積呼吸率（RMV）**的物理差異，提供手動計算公式，並以實例進行 Step-by-Step 的演練。

---

## 📐 SAC 與 RMV 的物理定義

雖然兩者都用來衡量潛水員的氣體消耗，但其物理意義不同：

1.  **SAC Rate (Surface Air Consumption - 壓力呼吸率)**：
    *   *定義*：潛水員在水面（1 ATA）狀態下，每分鐘消耗的**氣壓值**（單位：$\text{bar/min}$ 或 $\text{psi/min}$） [2][3]。
    *   *限制*：**SAC 綁定特定氣瓶容積**。例如使用 12L 鋼瓶時的 SAC，絕對不等於使用 11.1L 鋁瓶時的 SAC（大氣瓶的壓力下降慢，小氣瓶壓力下降快）。因此，不同氣瓶間的 SAC 無法直接比較 [2][4]。
2.  **RMV (Respiratory Minute Volume - 體積呼吸率)**：
    *   *定義*：潛水員在水面（1 ATA）狀態下，每分鐘消耗的**氣體實際體積**（單位：$\text{L/min}$ 或 $\text{ft}^3\text{/min}$） [2][5]。
    *   *優勢*：**RMV 是獨立於氣瓶尺寸的純人體特徵**。無論您掛載什麼容積的氣瓶，在相同的運動量與任務載荷下，您的 RMV 是恆定不變的。這在側掛潛水（常使用不同氣瓶旅行）中極具實用價值 [2]。

---

## 🧮 呼吸率核心計算公式

### 1. 壓力呼吸率 (SAC) 計算公式
$$\text{SAC (bar/min)} = \frac{\Delta P}{\text{Time} \times \text{ATA}}$$

其中：
*   \(\Delta P\)：潛水過程中消耗的氣壓差（起始氣壓 - 結束氣壓，單位：\(\text{bar}\)）
*   \(\text{Time}\)：潛水時間（單位：\(\text{min}\)）
*   \(\text{ATA}\)：潛水過程的**平均絕對壓力**（Atmospheres Absolute） [6][7]。
    *   *ATA 計算*：$$\text{平均深度 (ATA)} = \frac{\text{平均深度 (meters)}}{10} + 1$$

---

### 2. 體積呼吸率 (RMV) 計算公式
$$\text{RMV (L/min)} = \text{SAC (bar/min)} \times \text{氣瓶水容積 (L)}$$

或是直接由原始數據計算：
$$\text{RMV (L/min)} = \frac{\Delta P \times \text{氣瓶水容積}}{\text{Time} \times \text{ATA}}$$

---

## 📝 實例計算演練 (Step-by-Step Example)

### 📋 潛水數據假設：
*   **使用氣瓶**：單支 11.1L (AL80) 鋁瓶。
*   **潛水時間 (Time)**：\(45 \text{ 分鐘}\)。
*   **平均深度 (Average Depth)**：\(18 \text{ 米}\)。
*   **消耗氣壓 (\(\Delta P\))**：起始氣壓 \(200 \text{ bar}\)，結束氣壓 \(90 \text{ bar}\)（共消耗 \(110 \text{ bar}\)）。

---

### Step 1：計算平均深度絕對壓力 (ATA)
$$\text{ATA} = \frac{18\text{ 米}}{10} + 1 = 2.8 \text{ ATA}$$
這代表潛水員在 18 米處呼吸一口氣，其氣體分子密度是水面的 2.8 倍 [6][7]。

---

### Step 2：計算壓力呼吸率 (SAC)
$$\text{SAC} = \frac{110\text{ bar}}{45\text{ min} \times 2.8\text{ ATA}} = \frac{110}{126} \approx 0.873 \text{ bar/min}$$
這代表如果潛水員在水面呼吸這支 11.1L 的氣瓶，每分鐘氣壓會下降 0.873 bar。

---

### Step 3：轉換為通用體積呼吸率 (RMV)
$$\text{RMV} = 0.873\text{ bar/min} \times 11.1\text{ L} \approx 9.69 \text{ L/min}$$
該潛水員的體積呼吸率約為 **\(9.7 \text{ L/min}\)**。這是一個非常放鬆、流線型良好且推進無多餘動作的優秀呼吸率 [2][4]。

> 📋 **假設與限制**
> *   採用**整段潛水的平均深度**反推平均 ATA，假設深度大致穩定；若為多段深度（鋸齒型）剖面，應分段計算再加權。
> *   AL80 內容積取 **11.1 L**（Luxfer S80 規格近似值），不同廠牌略有差異。
> *   壓力錶讀值有誤差（±5 bar 常見），SAC/RMV 宜以**多次潛水取均值**，勿單筆定論。
> *   此為**平靜狀態** RMV，**不可**直接用於 Rock Bottom；緊急規劃須改用下表的高負荷 RMV。

---

## 📊 任務載荷 (Task Loading) 對 RMV 的動態影響

在進行安全保留氣體（Rock Bottom）規劃時，**絕對不能使用上述平靜狀態下的 RMV 進行計算**。水下緊急狀況（如丟失氣體、逆流奮力游動、驚慌）會導致呼吸率呈指數級暴增 [1][8]：

| 潛水員狀態 | 實務 RMV 範圍 | 氣體消耗特徵與應用 |
| :--- | :--- | :--- |
| **極度放鬆/平靜** | **8 - 12 L/min** | 溫暖水域、無流、靜態懸停拍照 [2]。 |
| **正常休閒游動** | **12 - 15 L/min** | 開放水域正常觀光、無多餘任務載荷。 |
| **輕度工作/技術潛水** | **15 - 20 L/min** | 攜帶相機、手電筒、輕微逆流、進行簡單線路操作。 |
| **重度工作/強流/冷水** | **20 - 25 L/min** | 強逆流推進、寒冷乾衣潛水，體能消耗大 [8]。 |
| **緊急撤退/壓力恐慌 (Panic)** | **30 - 45 L/min** | **Rock Bottom 計算基準**。雙人共氣撤退、爆管恐慌、劇烈游動時的預估消耗率 [1][8][9]。 |

---

## 📚 參考文獻與引用來源

1. **Crystal Dive Articles** - *Understanding SAC and RMV Rates*: 呼吸率定義、壓力與體積換算原理以及在氣體計劃中的作用。 [連結](https://www.crystaldive.com)
2. **No Gravity Divers** - *The Scuba Gas Consumption Guide*: 說明為何 SAC 與氣瓶容積綁定，而 RMV 為通用人體生理數據。 [連結](https://www.nogravity-divers.com)
3. **Aquarius Diving** - *How to calculate your Surface Air Consumption*: 提供詳細的手動公式演算與 psi 系統下的換算方法。 [連結](https://www.aquarius-divingtenerife.com)
4. **DAN Europe** - *The Physiology of Breathing under Pressure*: 探討氣體密度隨深度（ATA）增加對肺泡氣體交換與 RMV 變化的物理生理機制。 [連結](https://www.dan.org)
5. **Scuba Tech Philippines** - *Estimating Emergency RMV for Rock Bottom Planning*: 介紹技術潛水在進行安全停留與緊急上升規劃時，如何使用 30-40 L/min 的驚慌 RMV。 [連結](https://www.scubatechphilippines.com)
6. **SSI Blog** - *Physics of Diving: Calculating ATA & Pressure*: 平均深度絕對壓力的物理公式演算。 [連結](https://www.divessi.com)
7. **PADI Tec Rec Manual** - *Respiratory Minute Volume calculations for Gas Matching*: 針對技術混合氣體潛水，進行不同尺寸氣瓶體積折算的 RMV 標準指引。 [連結](https://www.padi.com)
8. **Punkfish Academy** - *Task Loading and RMV Spikes*: 技術潛水事故分析中，任務載荷與驚慌導致 RMV 暴增的實務案例。 [連結](https://www.punkfish-academy.com)
