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

1. **Crystal Dive** - *Master Surface Air Consumption: How to Lower Your SAC Rate*: SAC 定義、實例計算與降低呼吸率的實務策略（放鬆、浮力、流線化）。 [連結](https://www.crystaldive.com/master-your-surface-air-consumption/)
2. **No Gravity Divers** - *How to calculate air consumption? SAC and RMV in Scuba Diving*: SAC（bar/min，與瓶容積綁定）與 RMV（L/min，通用生理值）之區別與計算所需資料。 [連結](https://nogravity-divers.com/how-to-calculate-air-consumption-sac-and-rmv-in-scuba-diving/)
3. **DAN (Divers Alert Network), Alert Diver** - *Estimating Your Air Consumption*: 手動公式演算與 psi 系統下的換算方法。 [連結](https://dan.org/alert-diver/article/estimating-your-air-consumption/)
4. **R. Pyle (IANTD) / University of Maine Scientific Diving** - *Diving Physics and "Fizzyology"*（教學 PDF）: 深度（ATA）對氣體密度與呼吸生理之物理機制。 [連結](https://umaine.edu/scientificdiving/wp-content/uploads/sites/335/2014/10/Diving-Fizzyology-R.-Pyle-IANTD.pdf)
5. **Scuba Tech Philippines (Andy Davis)** - *Scuba Gas Planning: Gas Management For Divers*: Rock Bottom 保留計算、緊急情境下呼吸倍增（雙倍/三倍係數）之保守化建議。 [連結](https://scubatechphilippines.com/scuba_blog/scuba-gas-planning-management-divers/)
6. **PADI Blog** - *Diving Physics: The Science Behind Your Underwater Adventures*: 絕對壓力（ATA）隨深度之公式與氣體密度換算基礎。 [連結](https://blog.padi.com/diving-physics/)
7. **TDI/SDI** - *Do we have enough? Handling breathing gas properly*: 氣體需求評估、不同瓶容積下的氣量折算與保留思維。 [連結](https://www.tdisdi.com/tdi-diver-news/do-we-have-enough/)
8. **Divernet** - *Gas Planning 101: How to Calculate Your RMV*: RMV 計算流程與緊急規劃之壓力係數應用。 [連結](https://divernet.com/medical/gas-planning-101-how-to-calculate-your-rmv/)

> ⚠️ 引用注意：tdisdi.com 與 divernet.com 有反爬蟲機制（403），內容以搜尋引擎索引確認。
