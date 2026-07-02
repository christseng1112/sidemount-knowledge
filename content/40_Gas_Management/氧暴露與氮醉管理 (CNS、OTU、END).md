---
title: 氧暴露與氮醉管理 (CNS、OTU、END)
tags:
  - sidemount/gas-management
  - status/completed
---

# 氧暴露與氮醉管理 (Oxygen Exposure & Narcosis: CNS / OTU / END)

側掛技術潛水常使用高氧減壓氣（EAN50、O₂）與深度混合氣。本庫先前已涵蓋 MOD 與氣體切換，但**氧中毒風險量化（CNS%/OTU）與氮醉深度（END）** 是規劃深潛/減壓潛水不可或缺的一環。本篇補齊這塊缺口。

> ⚠️ **安全聲明**：以下為**標準參考值（NOAA Diving Manual 等）**，僅供已受相應混合氣/減壓訓練者複習。實際潛水請以你的潛水電腦、規劃軟體與所屬機構標準為準，本篇不可替代課程。

---

## 🫁 1. 氧分壓 (PO₂) 與兩種氧中毒

呼吸氣中氧的**分壓**（PO₂ = FO₂ × 絕對壓力 ATA）決定風險，而非百分比本身：

| 風險 | 機制 | 關鍵界線 |
| :--- | :--- | :--- |
| **低氧 (Hypoxia)** | PO₂ 過低致缺氧昏迷 | PO₂ **< 0.16～0.18** 危險（高氦 trimix 在水面尤須注意） |
| **中樞神經氧毒 (CNS / 急性)** | 高 PO₂ 引發抽搐（可能溺水），無預兆 | 工作 PO₂ 上限 **1.4 ATA**；減壓/靜止短時上限 **1.6 ATA** |
| **肺氧毒 (Pulmonary / OTU、慢性)** | 長時間高 PO₂ 累積，肺部刺激、肺活量下降 | 以 **OTU/UPTD** 累計量管理 |

---

## 📐 2. MOD（最大操作深度）計算

$$\text{MOD (m)} = \left(\frac{PO_2\text{ 上限}}{FO_2} - 1\right) \times 10$$

| 氣體 | FO₂ | MOD @ PO₂ 1.4 | MOD @ PO₂ 1.6 |
| :--- | :--- | :--- | :--- |
| 空氣 | 0.21 | 56.7 m | 66.2 m |
| EAN32 | 0.32 | 33.8 m | 40.0 m |
| EAN50（減壓氣） | 0.50 | 18.0 m | 22.0 m |
| O₂ 100%（減壓氣） | 1.00 | 4.0 m | **6.0 m** |

> 慣例：**底部氣（bottom gas）用 PO₂ 1.4** 規劃；**減壓氣（deco gas）靜止懸停可用至 1.6**。EAN50 切換深度多取 21～22 m（見 [[側掛氣體切換標準程序]]）。

---

## ⏱️ 3. CNS% 時鐘（急性氧毒追蹤）

把每個 PO₂ 下的**單次暴露限時**當作 100%，實際暴露時間佔比即累加為 **CNS%**；總和應**控制在 100% 以內**（多數規劃保守抓 ≤ 80%）。

**NOAA 氧暴露限值（節錄）：**

| PO₂ (ATA) | 單次最長 (min) | 24 小時上限 (min) |
| :--- | :--- | :--- |
| 1.6 | 45 | 150 |
| 1.5 | 120 | 180 |
| 1.4 | 150 | 180 |
| 1.3 | 180 | 210 |
| 1.2 | 210 | 240 |
| 1.1 | 240 | 270 |
| 1.0 | 300 | 300 |

*範例*：以 EAN50 在 21 m（PO₂ ≈ 1.55）減壓 12 分鐘，約佔 1.5 限值（120 min）的 10% CNS。多氣體潛水須將各段 CNS% 相加。

---

## 🧪 4. OTU / UPTD（肺氧毒/慢性累積）

* **OTU（Oxygen Toxicity Unit）** 量化單位時間高 PO₂ 對肺的累積負荷（PO₂ 須 > 0.5 才計）。
* 常用上限：**單次潛水約 850 OTU**；**多日連續潛水建議每日平均 ≤ 300 OTU** [3]。
* 休閒/單日技術潛水通常遠低於此；**多日洞穴/減壓專案**才需認真追蹤（潛水電腦多會代算）。

---

## 🌫️ 5. 氮醉與等效深度 (END)

深度增加使氮（與氧）的麻醉效應上升，造成判斷力與協調性下降（「深度陶醉」）。技術潛水以 **END（Equivalent Narcotic Depth，等效麻醉深度）** 管理，並以加氦（trimix）降低 END。

* **常見保守上限**：END **≤ 30 m**（部分機構放寬至 ≈ 40 m）。
* **trimix END 公式**（將氦視為非麻醉，氧、氮視為麻醉）：

$$\text{END (m)} = \big[(D + 10) \times (1 - F_{He})\big] - 10$$

*範例*：60 m 使用 Tx 18/45（FHe = 0.45）：END = (70 × 0.55) − 10 = **28.5 m**，落在 30 m 安全範圍內。
* **純空氣/高氧**：FHe = 0 時 END ≈ 實際深度（高氧只降氧毒 MOD，**不降氮醉**）。

---

## ✅ 規劃檢核重點
1. 底部氣 PO₂ ≤ 1.4、減壓氣 ≤ 1.6 → 反推各氣體 MOD/切換深度。
2. 全程 CNS% 相加 ≤ 100%（建議 ≤ 80%）。
3. 多日專案追蹤每日 OTU。
4. 深潛以 END ≤ 30 m 為基準，必要時加氦。
5. 三者皆應與**潛水電腦/規劃軟體交叉驗證**。

---

## 📚 參考文獻與引用來源
1. **NOAA Diving Manual（一手權威）** - *Oxygen Exposure Limits (CNS) & MOD*：美國國家海洋暨大氣總署潛水手冊，CNS 單次/24h 限值表與 MOD 計算之標準來源。 [連結](https://www.noaa.gov)
2. **DAN（Divers Alert Network）** - *Oxygen Toxicity: CNS and Pulmonary*：氧中毒兩型之生理機制與 PO₂ 界線。 [連結](https://www.dan.org)
3. **TDI Decompression Procedures / Helitrox Manual** - *Managing CNS%, OTU and END*：技術減壓課程對 CNS% 累加、OTU 上限與 END 控制的標準教材。 [連結](https://www.tdisdi.com)
4. **Shearwater Research** - *Understanding CNS%, OTU and Gas Settings*：潛水電腦如何即時計算 CNS%/OTU 及氣體 MOD 提示。 [連結](https://www.shearwater.com)
