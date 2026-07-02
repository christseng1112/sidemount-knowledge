---
title: DPV 水下推進器與側掛整合
tags:
  - sidemount/advanced
  - status/completed
---

# DPV 水下推進器與側掛整合 (DPV Integration with Sidemount)

DPV（Diver Propulsion Vehicle）把洞穴/沉船的可及範圍成倍擴大，也把氣體計劃、Trim 與緊急程序全部改寫。側掛 + DPV 是長距離洞穴穿越的主流組合——側掛的扁平剖面正好配合 DPV 的低阻力需求。

> ⚠️ DPV 應經正式課程（如 TDI DPV、洞穴 DPV 課）訓練後使用；本篇僅供概念整理 [1]。

---

## 🔗 拖曳系統 (Tow System)

*   **拖繩掛跨帶 D 環**：高性能 DPV 以拖繩（Tow cord）扣在**跨帶（Crotch strap）D 環**上，由背帶承受全部拖曳力——手臂只負責轉向，不承力 [1][2]。側掛背帶本就標配跨帶，整合自然。
*   **拖繩幾何**（社群慣例）[3]：
    *   **12/6 佈局**（扣點在把手上下）：俯仰穩定，機器「自己會開」，適合長直線巡航。
    *   **3/9 佈局**（扣點在把手左右）：俯仰不穩定需手臂持續輸入，但轉向靈活，適合多彎通道。
*   **身體姿態**：維持水平 Trim 被拖曳，蛙鞋當舵。側掛雙瓶在 DPV 尾流中穩定性優於背掛雙瓶。

---

## ⚖️ DPV 本身的配平

*   DPV 應調至**水中中性浮力且水平懸浮**：機內配重艙加鉛或浮材微調 [1][4]。
*   明顯正/負浮力的 DPV 會直接汙染潛水員自身浮力控制 [1]。
*   海水/淡水轉換（如海洞）需重新配平 [4]。

---

## 🧮 氣體與距離規劃

DPV 改變的不是呼吸率，是**距離**——這使氣體計劃的本質從時間變成「走得回來嗎」：

1.  **DPV 故障 = 用蛙鞋游回**：規劃基準是**故障點游泳出洞**的氣量。滲透距離以「游泳 1/3」而非「DPV 1/3」計算（原則見 [[氣體計劃與安全保留原則]]）。
2.  **電量規則**：與氣體同邏輯——進程用 1/3 電量即折返，保留故障餘裕。
3.  **多瓶配合**：DPV 長穿越常配 Stage 瓶，掛載順序見 [[多氣瓶與減壓瓶掛載配置 (Technical Sidemount)]]。

---

## 🚨 DPV 特有緊急情境

| 情境 | 應變 |
| :--- | :--- |
| **卡油門（Runaway）** | 放開把手讓拖繩承力、機頭上仰減速、關電源開關；不可與機器角力 |
| **深度急變** | DPV 速度下的上升/下降遠快於游泳——**耳壓與電腦錶警戒**，上升段減速慢行（速率標準見 [[上升速率與安全停留標準]]） |
| **故障棄機** | 中性配平的 DPV 可繫在導引線上標記位置，游泳出洞；這是配平中性的另一個理由 |
| **隊友失散** | DPV 速度使間距瞬間拉大——隊形紀律與燈光信號（見 [[團隊手勢燈光與觸摸溝通]]）比游泳潛水更嚴格 |

---

## 📚 參考文獻與引用來源

1. **Andy Davis (Scuba Tech Philippines)** - *Ultimate Guide to Diver Propulsion Vehicles: DPV & Dive Scooters*: 拖繩扣跨帶 D 環承力原理、DPV 配重艙中性配平、正式課程之必要。 [連結](https://scubatechphilippines.com/scuba_blog/dpv-diver-propulsion-vehicle-underwater-scooter-guide/)
2. **Tecline Diving Academy** - *DPV Diver Configuration*: 「調整妥當的背帶與必備跨帶讓你駕馭機器而非被機器駕馭」——背帶承力與 Trim/定向/浮力三原則。 [連結](https://teclinediving.eu/academy/art/dpv-diver-configuration/)
3. **The Dive Forum** - *DPV / scooter – hints and tips*: 12/6 與 3/9 拖點佈局的俯仰穩定性/轉向性取捨。**社群來源，僅供補充**。 [連結](https://www.thediveforum.com/forum/technical-diving/technical-diving-general-discussions/27504-dpv-scooter-hints-and-tips)
4. **Seacraft (DPV 原廠)** - *DPV trimming and balancing*: 原廠配平指引——機內配重調至水平中性懸浮。 [連結](https://support.seacraft.eu/knowledge-base/dpv-trimming-and-balancing/)
