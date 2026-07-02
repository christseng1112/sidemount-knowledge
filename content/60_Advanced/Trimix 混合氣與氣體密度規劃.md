---
title: Trimix 混合氣與氣體密度規劃
tags:
  - sidemount/advanced
  - status/completed
---

# Trimix 混合氣與氣體密度規劃 (Trimix & Gas Density Planning)

深度超過空氣/Nitrox 的合理範圍後，技術側掛進入 **Trimix（氧+氦+氮三元混合氣）**領域。加氦的理由過去只講氮醉（END），現代研究則確立了第二個更硬的上限：**氣體密度**。本篇整理 Trimix 的組成邏輯、密度規劃準則與側掛實務。

---

## 🧪 為什麼加氦

1.  **降低麻醉性**：氦幾乎無麻醉性，取代氮可把 END 控制在目標深度內（END 計算見 [[氧暴露與氮醉管理 (CNS、OTU、END)]]）。
2.  **降低氣體密度**：氦密度僅 0.18 g/L（氮 1.25、氧 1.43，1 ATA）——這是現代規劃的核心理由 [1][2]。
3.  **命名法**：Trimix 21/35 = 21% O₂ / 35% He / 餘為 N₂。低氧混氣（Hypoxic trimix，O₂ <18%）用於 60 m+，水面/淺處不可呼吸。

---

## ⚖️ 氣體密度規劃（Anthony & Mitchell 研究）

*   **理想上限 5.2 g/L；絕對上限 6.2 g/L** [1]。以空氣計，分別對應約 **31 m** 與 **39 m**（102/128 fsw）[1]。
*   研究發現：呼吸氣密度達 **6.0 g/L** 時，開路與 CCR 潛水員都出現危險等級的 **CO₂ 滯留** [1]。高密度氣體使呼吸功（Work of Breathing）上升、通氣效率下降，CO₂ 累積會在無自覺下造成失能 [1][2]。
*   **密度規劃比 END 規劃更嚴**：按密度 ≤5.2 g/L 規劃，END 自動保守；反之「END 合格」的混氣仍可能超過密度上限 [2]。**兩者都要算，以較嚴者為準。**

> 📌 密度速算：$\rho_{depth} = \rho_{1ATA} \times P_{ATA}$，其中 $\rho_{1ATA} = F_{O_2}\times1.43 + F_{He}\times0.18 + F_{N_2}\times1.25$（g/L）。例：Trimix 21/35 在 45 m（5.5 ATA）：$(0.21\times1.43+0.35\times0.18+0.44\times1.25)\times5.5 \approx 5.0$ g/L ✅。

> 📋 **假設與限制**：理想氣體近似；實際充填比例有 ±1–2% 誤差——**以分析儀實測值計算**（見 [[氣體分析與氣瓶標示實務]]），並與規劃軟體交叉驗證（見 [[減壓規劃軟體與梯度因子]]）。

---

## 🛠️ 側掛 Trimix 實務

1.  **雙主瓶同混氣**：左右瓶必須充**相同**底氣並各自分析——側掛輪換呼吸的前提是兩瓶可互換。
2.  **標示**：混氣標 O₂/He（如 "18/45"）於瓶頸分析標籤 + MOD 大字於瓶身（標準見 [[氣體分析與氣瓶標示實務]]）[3]。
3.  **減壓氣掛載**：Trimix 潛水常配 1–2 支減壓瓶（EAN50、O₂），掛載與切換程序見 [[多氣瓶與減壓瓶掛載配置 (Technical Sidemount)]]。
4.  **氦的代價**：氦貴且加速組織進出氣（減壓計劃對時間更敏感）；Runtime 與備案表照 [[減壓規劃軟體與梯度因子]] 工作流產出。
5.  **證照路徑**：TDI Trimix / IANTD Normoxic Trimix 起（通常要求先具 Advanced Nitrox + Deco Procedures）；側掛版本課程對比見 [[側掛潛水系統與證照課程對比]]。

---

## 📚 參考文獻與引用來源

1. **DAN (Divers Alert Network) Alert Diver** - *Performance Under Pressure*: Gavin Anthony 與 Simon Mitchell 的氣體密度研究——理想 5.2 g/L / 絕對上限 6.2 g/L（對應空氣 102/128 fsw）、6.0 g/L 時開路與 CCR 皆現危險 CO₂ 滯留。 [連結](https://dan.org/alert-diver/article/performance-under-pressure/)
2. **Divesoft** - *The 5.2 g/L Rule: Why Gas Density May Be the Most Important Number in Deep Diving*: 密度→呼吸功→CO₂ 滯留機轉、「按密度規劃自動使 END 保守，反之不然」之規劃原則（引 Rebreather Forum 4 與 Mitchell 之 CO₂ 研究）。 [連結](https://www.divesoft.com/en/blog/the-5-2-g/l-rule-why-gas-density-may-be-the-most-important-number-in-deep-diving)
3. **Andy Davis (Scuba Tech Philippines)** - *Why Do Divers Use Helium?*: 氦在深潛的麻醉性與密度雙重角色、Trimix 命名與使用時機。 [連結](https://scubatechphilippines.com/scuba_blog/why-do-deep-divers-use-helium/)
