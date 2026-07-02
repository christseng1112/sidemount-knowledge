---
title: XDEEP Stealth 2.0 系統調整與配置
tags:
  - sidemount/equipment
  - status/completed
---

# XDEEP Stealth 2.0 系統調整與配置 (XDEEP Stealth 2.0 Setup & Tuning)

**XDEEP Stealth 2.0** 是目前全球技術與休閒側掛潛水市場上佔有率最高、最知名的模組化側掛系統。與 Razor 的「一體成型極簡」哲學不同，XDEEP 採用了**高度模組化、肩膀與腰部獨立背帶、以及中央脊椎配重**的設計，旨在提供極佳的調整便利性與極高負載能力。

本篇將詳述 XDEEP Stealth 2.0 的版本差異、核心硬體設計、穿戴微調步驟，並與您的主系統 **[[Razor 側掛系統調整與配置|Razor 4.0]]** 進行實務交叉對比。

---

> 📘 本章已比對 **XDEEP STEALTH 2.0 與 STEALTH 2.0 TEC 官方使用手冊（Revision 3, 2015）** 校訂，官方規格以 [13] 標註。

## 📐 XDEEP Stealth 2.0 三大版本解析

XDEEP 根據潛水員的環境與氣瓶材質，推出了三種不同的氣囊（Wing）配置：

> ⚠️ **官方手冊一處筆誤提醒**：Tec 手冊內文列點將 TEC 標為「over 13kg」、REC 標為「19kg」，與各自的「技術規格頁」**自相矛盾**。以規格頁為準：**Classic 16 kg、Rec 13 kg、Tec 19 kg**（Tec 規格頁明載 19 kg、最大氣瓶 4×15L）。本庫採規格頁數值 [13]。

```
【Classic 經典版】          【Tec 技術版】            【Rec 休閒版】
  (16 kg 浮力)              (19 kg 浮力)             (13 kg 浮力)
    ┌───┐                     ┌───┐                    ┌───┐
   /     \                   /     \                  │   │
  │  █  │                   │  █  │                  │  █  │  <--- 氣囊與背帶整合
   \     /                   /       \                 │   │
    └───┘                   └─────────┘                └───┘
 氣囊完全獨立              中下部加寬，適合重鋼瓶      有快拆扣，穿戴最簡便
```

### 1. Stealth 2.0 Classic (經典版 - 16kg 浮力)
*   **設計**：氣囊與背帶完全分離。氣囊透過上下兩端的彈性繩和織帶扣固定在背帶上。
*   **適用**：主要使用**鋁瓶（AL80）**的潛水員，或是熱帶溫暖水域的技術潛水。其扁平的三角外型能提供極佳的流線型，是多數洞穴潛水員的首選 [1][2]。

### 2. Stealth 2.0 Tec (技術版 - 19kg 浮力)
*   **設計**：氣囊中下部顯著加寬，且氣閥直接與氣囊相連。
*   **適用**：主要使用**重型鋼瓶（Steel Tanks）**或需要掛載多支減壓瓶（Stage/Deco）的極限技術潛水。寬大的下半部氣腔能有效補償鋼瓶瓶底的重負力，提供強大的下半身起浮力 [1][3]。

### 3. Stealth 2.0 Rec (休閒版 - 13kg 浮力)
*   **設計**：氣囊直接與背帶整合，並在肩帶上加入了休閒潛水員熟悉的**快拆扣（Pinch Buckles）**。
*   **適用**：不需進入封閉空間、只使用單瓶或雙瓶進行標準休閒潛水的潛水員，穿脫最為快速簡便 [1][2]。

---

## 📋 官方技術規格 (Technical Specification) [13]

| 項目 | Stealth 2.0（Classic 規格頁） | Stealth 2.0 **TEC**（規格頁） |
| :--- | :--- | :--- |
| 類型 | 獨立側掛氣囊，五點式背帶固定 | 側掛氣囊，固定於 Stealth 2.0 背帶 |
| **升力 (Buoyancy)** | **16 kg** | **19 kg** |
| 外殼布料 | Cordura 1100 dTEX | Cordura 1100 dTEX |
| 內膽布料 | Nylon 440 dTEX | Nylon 440 dTEX |
| 乾重（不含背帶） | 1 kg | 1.4 kg |
| 充氣閥 | K-Type | K-Type |
| 供氣壓力 | 最低 6 bar／最高 17.23 bar (250 psi) | 同左 |
| **最大氣瓶** | **2 × 15 L** | **4 × 15 L** |
| 水溫範圍 | −2°C ～ 40°C | 同左 |
| 原廠保養 | **每 200 潛或至少每年**送 XDEEP 授權服務中心保養 | 同左 |

> ⚠️ **重要釐清（雙氣囊/冗餘）**：官方將 Classic 描述為「double-shell / 兩層」、Tec、Rec 為「two-layer」結構——這是指**外殼（Cordura）＋內膽（Nylon）兩層**，**並非「雙氣囊冗餘（dual/redundant bladder）」**。**Stealth 2.0（含 Tec）標準版皆為單一氣室**，本身不具備備用氣囊。需要冗餘浮力者須另行確認是否有雙囊版本或改用乾衣/可拋配重方案（見 [[BCD與浮力失效緊急應變方案]]）。

> 🛟 **官方安全聲明**：BC 不是救生衣、不保證臉朝上姿勢；**BC 不可作為唯一浮力來源**；勿用 BC 打撈 >2 kg 物件（請用 lift bag）；高氧混合氣不在 CE（type 36）認證範圍 [13]。

---

## ⚙️ 核心組件與物理特性

### 1. 獨立背帶系統 (Independent Harness System)
XDEEP 的背帶由三段獨立的織帶組成，這在側掛系統中是一大創新：
*   **肩帶（軟織帶）**：較為柔軟，能完美貼合肩膀曲線，減少乾衣或防寒衣的摩擦。
*   **腰帶（硬織帶）**：極硬，用於承載氣瓶掛載後的拉力，確保D環不會因重壓而移位變形。
*   **胯帶（中硬度織帶）**：限制整個系統在充氣時上浮 [1][4]。
*   **物理優勢**：調整肩帶長度時，完全不會牽動到腰帶或 D 環的位置，這使得 Fitting 調整變得極為直觀與局部化 [4][5]。

### 2. 中央脊椎配重袋 (Central Weight Pocket, CWP)
CWP 是 Stealth 2.0 的標誌性設計：
*   **配置位置**：一條直立的配重袋，緊貼潛水員的背部脊椎中線；以金屬轉接片（metal adaptor）鎖在連接上/下節點的中央織帶上，**高度可調**——出廠預設於最高位（overhead 用），可下移以精確調整重心與 Trim [13]。
*   **容量規格**：依產品頁分 S/M/L/XL（約 4／8／12／16 kg）。⚠️ *S/M/L/XL 之確切 kg 數源自 XDEEP 產品頁、非本次官方手冊；手冊僅載 CWP 容量「可調」。*
*   **可拋式腰部配重袋（官方）**：手冊載明可在腰帶方形 D 環加裝 XDEEP 雙配重袋，容量 **2×3 kg 或 2×6 kg**（原為背掛系統設計，以螺絲固定），提供水面緊急可拋配重 [13]。
*   **Trim 口袋**：可用兩個 tri-glide 安裝於背帶織帶上**幾乎任意位置**，依防寒衣調整配重分佈 [13]。
*   **物理效果**：將大重量配重集中在身體左右對稱的中線上，提供側向穩定性，並可上下調整配重塊位置實現精確水平 Trim [4][6][7][13]。

---

## 🛠️ XDEEP Stealth 2.0 穿戴微調步驟

進行微調時，請穿著潛水服裝並按照以下順序調整 [4][7]：

### 步驟 1：調整中央配重袋 (CWP) 的高度
*   CWP 的頂端應剛好切齊您的**頸椎下緣（約第七頸椎）**，確保配重分佈在胸椎與腰椎區間。若太高會壓迫脖子，太低會導致配重塊集中在臀部，造成腳下沉（Foot-heavy） [4]。

### 步驟 2：肩膀與腰部織帶調整
*   穿上背帶後，先將腰帶扣緊。腰帶上的 **Square D-rings（方形D環）** 應精確位於您的**髖骨兩側中線上**。
*   接著拉緊肩帶。肩帶前端的胸前 D 環應定位在**鎖骨下方約兩指寬處**（此為掛載氣瓶上Bolt snap的黃金點） [4][7]。

### 步驟 3：氣囊（Wing）固定與走線
*   **Classic/Tec 版**：氣囊頂部的 Bungee 應繞過肩帶交叉處，底部則透過不鏽鋼扣環固定於腰帶後方。
*   **充排氣軟管（LPI）**：充氣閥軟管應從左側腋下穿出，固定在左肩帶的橡皮圈上。
*   **下排氣閥（Dump Valve）**：Tec 版的下排氣閥位於氣囊底部中央。在水中排氣時，只需一隻手向後下方摸索即可輕鬆拉動排氣，極具人體工學便利性 [3][4]。

---

## 🔄 與主系統 Razor 4.0 的實務交叉對照

如果您目前主要使用 **[[Razor 側掛系統調整與配置|Razor 4.0]]**，在接觸或配置 XDEEP 時需注意以下關鍵操作差異：

1.  **配重手感的不同**：
    *   *Razor 4.0* 使用 **Wing Weight Pockets** 分散在氣囊周圍，側向調整自由度高（適合單瓶或 Rebreather 平衡） [8]。
    *   *XDEEP* 則極度依賴 **中央脊椎配重袋 (CWP)**，重量集中於中軸線，雖然側向調整空間小，但對於雙瓶對稱潛水，其前後 Trim 的調整極為穩固直觀 [4][6]。
2.  **彈性繩（Bungee）的阻力感受**：
    *   *Razor 4.0* 的 Loop Bungee 可以透過 Bungee Tri-glide 調整張力，讓氣瓶閥非常緊貼腋下 [8][11]。
    *   *XDEEP* 官方手冊提供**三種彈性繩裝法**：①一條連續繩走背後接左右肩 D 環；②兩條獨立繩接於左右肩 D 環上方；③兩條獨立繩以「浮動環（floating loop）」接肩帶。⚠️ **官方明確指出方法①（連續繩）雖普遍，缺點是會把 D 環壓在胸前，故建議採用方法②或③（獨立繩/浮動環）** [13]。（修正：先前「XDEEP 通常用連續繩」之描述與官方建議相反。）出廠隨附 **10 公尺彈性繩**供自行裁配。
3.  **穿脫便利性**：
    *   *Razor* 的一體成型織帶沒有快拆扣，穿脫需要像穿背帶一樣滑入，但水中輪廓極小 [8]。
    *   *XDEEP*（特別是 Rec/Tec）在腰帶和肩帶連接處有較多靈活的D環與調整扣，對於肩膀柔軟度較差或穿厚乾衣的潛水員，穿脫更為輕鬆 [4][8]。

---

## 📚 參考文獻與引用來源

1. **XDEEP Official Website** - *Stealth 2.0 Sidemount System Family (Tec, Rec, Classic)*: 官方產品規格書與適用環境對比說明。 [連結](https://www.xdeep.eu)
2. **DIR Direct** - *XDEEP Stealth 2.0 Setup Guide*: 關於 Classic 與 Rec 版本氣囊構造與調整的技術文章。 [連結](https://www.dirdirect.com)
3. **XDEEP Tec Manual** - *Buoyancy Control & Dump Valve Positioning*: 技術版 19kg 氣囊配置與底部中央排氣閥操作指南。 [連結](https://www.xdeep.eu)
4. **XDEEP Support** - *Stealth 2.0 Harness Assembly & Fitting Manual (PDF)*: 官方出版的背帶組裝與 Fitting 標準步驟手冊。 [連結](https://www.xdeep.eu)
5. **Audrey Cudel Technical Diving** - *Stealth 2.0 Harness Modularity*: 探討 XDEEP 獨立肩膀/腰部織帶在教學調整中的人體工學優勢。 [連結](https://www.audreycudel.com)
6. **Cenote Girl** - *Sidemount Systems Weighting in Mexico Caves*: 比較 XDEEP Central Weight Pocket 與 Razor T-weight 在洞穴潛水中的配重平衡表現。 [連結](https://www.cenotegirl.com)
7. **Sidemount Pros** - *Tuning the XDEEP Stealth 2.0 for Perfect Trim*: 專業側掛教練對於 XDEEP 系統精微調整、D環定位與配重微調的實戰建議。 [連結](https://www.sidemountpros.com)
8. **Reddit r/scuba** - *Razor 4.0 vs XDEEP Stealth 2.0 Tec - Real World Experience*: 潛水社群用戶對於兩款系統在穿脫、耐久度與水中配重分佈的討論。 [連結](https://www.reddit.com)
9. **Scuba Tech Philippines** - *The Modular Sidemount System Review*: 對於 XDEEP 模組化設計、硬質保護板與防刮性能的深度評測。 [連結](https://www.scubatechphilippines.com)
10. **DIR Direct** - *XDEEP Central Weight Pocket Sizing*: 介紹 S、M、L、XL 脊椎配重袋的尺寸、容量與不鏽鋼鎖扣安裝方式。 [連結](https://www.dirdirect.com)
11. **Sidemounting.com** - *Bungee Systems Compared: Loop, Continuous, and Bolt Snap*: 深入對比 Razor 的三叉調整扣 Loop Bungee 與 XDEEP 的背部 Continuous Bungee。 [連結](https://www.sidemounting.com)
12. **YouTube (Garry Dallas Technical)** - *XDEEP Stealth Harness Customization*: 知名教練 Garry Dallas 針對 XDEEP 背帶進行客製化微調與彈性繩改裝的影片教學。 [連結](https://www.youtube.com)
13. **XDEEP（官方一手資料）** - *STEALTH 2.0 User Manual & STEALTH 2.0 TEC User Manual, Revision 3 (2015)*：官方使用手冊。涵蓋三種彈性繩裝法（官方建議獨立繩/浮動環而非連續繩）、五點式背帶、CWP 高度可調、可拋腰袋 2×3／2×6 kg、技術規格（Classic 16 kg／Tec 19 kg、Cordura 1100＋Nylon 440 兩層結構、最大氣瓶 2×15L／4×15L、K-Type 充氣閥、每 200 潛保養）。 [連結](https://www.xdeep.eu)
