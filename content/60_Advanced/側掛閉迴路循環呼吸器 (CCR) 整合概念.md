---
title: 側掛閉迴路循環呼吸器 (CCR) 整合概念
tags:
  - sidemount/advanced
  - status/completed
---

# 側掛閉迴路循環呼吸器 (CCR) 整合概念 (Sidemount CCR Integration)

本庫其餘篇章以**開路（Open Circuit, OC）**側掛為主。當潛水跨入長時程、深減壓或長距離洞穴穿越，**閉迴路循環呼吸器（Closed Circuit Rebreather, CCR）** 成為主流——它循環利用呼出氣、以清除罐（Scrubber）吸附 CO₂、以電控注氧維持定值 PO₂，氣體效率遠高於 OC。側掛與 CCR 的結合有兩條路線，邏輯截然不同，本篇釐清概念與配置差異。

> ⚠️ **安全聲明**：CCR 為高複雜度生命維持裝置，**必須經原廠/機構正式 CCR 課程訓練**（含對應的側掛 CCR 或 bailout 課程）。本篇僅供概念整理，不可作為操作依據。CCR 的 CO₂/PO₂ 生理風險見 [[二氧化碳滯留與呼吸功 (Hypercapnia)]] 與 [[氧暴露與氮醉管理 (CNS、OTU、END)]]。

---

## 🔀 兩條整合路線（先分清楚在講哪一種）

| 路線 | 主呼吸來源 | 側掛角色 | 典型場景 |
| :--- | :--- | :--- | :--- |
| **A. 側掛式 CCR（Sidemount CCR）** | **CCR 本體即掛在身側**（如 Divesoft Liberty Sidemount） | CCR 主機側掛化，背部淨空 | 極窄洞穴：連背掛 CCR 都過不去的限制空間 [1] |
| **B. 背掛 CCR + 側掛 bailout** | 背掛 CCR | **側掛瓶作為 bailout（緊急開路備援）/ 稀釋氣** | 大多數技術 CCR 潛水的標準 bailout 配置 [2][3] |

> 📌 兩者都用到「側掛」，但**A 是把呼吸器側掛、B 是把備援瓶側掛**。討論配置前務必先確認在講哪一種。

---

## 🧩 路線 A：側掛式 CCR 的配置要點

以 Divesoft **Liberty Sidemount** 為代表 [1]：

1.  **浮力自成一體但非 BC**：鈦合金載架設有減浮切孔，**全氣載（2×2 L 鋼/鋁瓶）下可達中性**，無需額外離身氣瓶；但**呼吸器本身不是浮力補償器**，仍須另配側掛背帶與氣囊（見 [[側掛背帶與浮力補償裝置 (BCD)]]）[1]。
2.  **對肺（Counterlung）貼胸擺位決定呼吸功**：對肺須貼近胸口、沿身體縱軸約傾斜擺放，**位置正確才有可用的呼吸功（WOB）**；擺錯會在特定姿勢下吸吐費力（呼吸功與 CO₂ 的關係見 [[二氧化碳滯留與呼吸功 (Hypercapnia)]]）[1]。
3.  **咬嘴紀律（生死關鍵）**：任何時刻**未呼吸的咬嘴（MPV/DSV）必須關閉**，否則迴路進水淹沒清除罐 → CO₂ 穿透。這與 OC 側掛「二級頭切換」是完全不同的肌肉記憶 [1]。
4.  **上升主動排氣**：上升時迴路、對肺、氣囊、乾衣內氣體同時膨脹，**須主動從所有氣腔排氣**控速（速率標準見 [[上升速率與安全停留標準]]）[1][3]。

---

## 🛟 路線 B：背掛 CCR + 側掛 bailout

側掛的獨立雙瓶天生適合當作 CCR 的 bailout（備援開路）與稀釋氣（Diluent）來源，提供乾淨、對稱且易於管理的系統 [2][3]：

### 1. 氣體分配與管線路由 (Gas Routing)
*   **左側稀釋氣瓶 (Left Diluent / Bailout)**：
    *   **氣體與功能**：充填適合計畫深度的稀釋氣（如 Air, Nitrox 或 Trimix），同時作為首要開路備援氣體。
    *   **管線走線**：從左瓶一級頭引出一條中壓管，沿胸前橫向繞至右側，尾端加裝 **QC6（或 Swagelok）快接母頭**。該快接頭可對接至 CCR 的 **ADV（自動稀釋氣閥）** 或手動稀釋氣加注閥（MAV-D），隨時在水下與 CCR 迴路連通或斷開 [2]。
*   **右側減壓備援瓶 (Right Deco / Bailout)**：
    *   **氣體與功能**：充填高氧減壓氣體（如 EAN50 或 100% O₂），作為減壓階段的開路備援。
    *   **管線走線**：從右瓶一級頭引出中壓管，尾端同樣加裝 QC6 快接母頭，可對接至 CCR 的手動氧氣加注閥（MAV-O）或作為高氧 BOV 供氣源。
*   **BOV (Bailout Valve) 連接**：CCR 的咬嘴若為 BOV（整合開路/閉路切換閥），其供氣管通常接至左側 Diluent 瓶，確保只需撥動手柄即可吸到可呼吸的稀釋氣體 [2][3]。

### 2. 緊急開路備援程序 (Bailout SOP)
當 CCR 發生 PO₂ 異常（失控的高氧或低氧）、清除罐失效致 CO₂ 蓄積、或是系統無預警當機時，必須**立刻、無條件執行以下 Bailout 步驟**：

```
步驟 1: 切換開路 (Switch to OC)  ───> 步驟 2: 穩定呼吸與排堵 ───> 步驟 3: 團隊通知與迴路管理 ───> 步驟 4: 撤退與監控
撥動 BOV 切換桿至 OC，或吐掉      確認吸氣通暢，將呼吸節奏     給隊友「Bailout（大拇指    關閉未咬住的 DSV 咬嘴，
DSV 換咬側掛備用二級頭。          放緩，平復可能產生的驚慌。   朝上+拍頭）」手勢並確認。   防止迴路進水，隨即開始上升。
```

*   **詳細步驟拆解**：
    1.  **切換開路 (Switch to OC)**：第一時間將氣源換至安全的開路系統。若配備 BOV，直接將撥桿由 CC 撥至 OC；若配備普通 DSV，立即將咬嘴吐出，換咬掛於頸圈上的左側側掛備用二級頭。
    2.  **穩定呼吸 (Stabilize)**：開路供氣能立刻阻斷 CO₂ 或缺氧的威脅。在此階段保持 Trim，控制浮力，將呼吸頻率降低，平復壓力。
    3.  **團隊通知 (Signal Team)**：向隊友出示「Bailout」手勢（大拇指朝上配合手掌拍擊頭頂），隊友必須上前建立肢體接觸，協助監控浮力與指引。
    4.  **迴路管理 (Loop Management)**：如果是吐掉 DSV，**必須立刻關閉 DSV 閥門**。否則開路狀態下的呼吸器迴路會大量進水，導致 CCR 瞬間失去所有浮力並沉底，且水與清除罐內的鹼石灰反應會產生極危險的「化學燒傷（Caustic Cocktails）」[1][3]。
    5.  **啟動撤退 (Exit)**：開始按開路減壓計劃上升。上升過程中，隨時注意側掛 bailout 瓶的 SPG。如果需要更換氣體（如換吸右側 EAN50 減壓瓶），比照 [[側掛氣體切換標準程序]] 執行。

*   **Bailout 氣量規劃**：Bailout 氣量必須按「全開路游泳出場」計算。估算公式應採用高負荷 RMV (如 25-30 L/min) $\times$ 深度 $\times$ 減壓停留時間，原則同 [[氣體計劃與安全保留原則]]。
*   **深潛可用「bailout CCR」取代大量 OC 瓶**：當深度大於 80 米時，以第二台側掛 CCR 作 bailout 比堆疊 4 至 5 支 OC 減壓瓶更省阻力與氦成本；但這需要極高階的專門訓練 [2][3]。
*   **多瓶掛載幾何**：側掛 bailout 與減壓瓶的左側優先、層疊走線與長管淨空，比照 [[多氣瓶與減壓瓶掛載配置 (Technical Sidemount)]]。

---

## ⚖️ 配平與共通風險

1.  **配平**：CCR 迴路內氣體量在潛水中相對恆定（不像 OC 隨消耗變正浮），但清除罐、氣瓶材質與 bailout 瓶浮力變化仍影響 Trim，須整體重做配重檢查（見 [[鋼瓶與鋁瓶的浮力與配重管理]]）。
2.  **三大殺手不變**：**低氧/高氧（PO₂ 失控）、CO₂ 滯留（清除罐耗盡/迴路進水）、驚慌下的咬嘴誤操作**——側掛化不會消除這些，只改變幾何。
3.  **側掛化的真正動機**：不是「更安全」，而是**通過背掛 CCR 過不去的限制空間**、或降低長穿越阻力。若無此需求，背掛 CCR 通常更單純 [1]。

---

## 📚 參考文獻與引用來源

1. **Divesoft（原廠一手資料）** - *CCR Liberty Sidemount Manual*（Revision 2.17.6, 2025-03）：側掛 CCR 之鈦載架中性浮力設計、2×2 L 氣瓶、對肺貼胸約 25° 擺位與呼吸功、未用咬嘴須關閉、上升主動排氣、呼吸器本身非 BC。 [連結](https://www.divesoft.com/en/manuals/ccr-liberty-manual/ccr-liberty-sidemount-manual_en)
2. **International Training (TDI/SDI)** - *Using a Bailout Rebreather*：背掛 CCR 搭配側掛 bailout/稀釋氣、快拆連通 ADV/BOV、深潛以 bailout CCR 取代多支 OC 瓶之邏輯。 [連結](https://www.tdisdi.com/tdi-diver-news/using-a-bailout-rebreather/)（⚠️ 引用注意：tdisdi.com 對抓取器回 403，內文摘要經搜尋索引確認，具體內容請人工複核）
3. **InDEPTH (GUE)** - *When Sidemount Becomes the Solution: Alternative Rebreather Configurations*：側掛 CCR 與背掛+側掛 bailout 的取捨、限制空間動機與上升排氣要點。 [連結](https://indepthmag.com/alternative-rebreather-configurations/)（⚠️ 引用注意：indepthmag.com 對抓取器回 403，內容經搜尋索引確認，請人工複核）
4. **Advanced Diver Magazine** - *CCR Sidemount Stage Configuration for Exploration*（Curt Bowen）：探索型側掛 CCR 與 stage/bailout 掛載實務。 [連結](http://www.advanceddivermagazine.com/articles/ccrsidemount/ccrsidemount.html)
