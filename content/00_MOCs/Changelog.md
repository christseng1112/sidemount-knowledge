# 📜 知識庫更新紀錄 (Changelog)

本頁依時間倒序記錄全庫的審訂、增補與修正歷程。安全關鍵數值之修訂一律在此留痕，並於對應筆記內文標註。（本頁僅中文維護；英文版讀者請以本頁為準。）

---

> 🆕 **2026-07-16 CI 結構守門＋維運整備**：(1) GitHub Actions 部署流程新增 **validate job**——每次 push（含直接在 GitHub 網頁上的編輯與社群 PR）先跑 wikilink 解析與 zh↔en 對照表完整性檢查，不過即擋下部署；`check-links.ps1` 為此跨平台化（Linux runner 相容）並加上非零退出碼。(2) 更新紀錄自主 MOC 外移至本頁（原 8 條、5,500+ 字元佔據目錄中段）。(3) 首頁筆記數改為不需維護的「70+ 篇」寫法。(4) README 補「新增筆記 SOP」checklist。(5) 前次順帶：publish.ps1 追蹤清單補上維護工具檔（title-map.tsv 原為 untracked）、健檢輸出 CSV 脫離版控。

> 🆕 **2026-07-15 全庫診斷與中英一致性修復**：(1) 修復 `en/` 英文版 **78 條斷鏈 wikilink**（佔 19%）——成因為翻譯漂移（同一篇在不同檔案被譯成不同英文標題）與部分連結指錯資料夾；中文版經查為 0 斷鏈、0 MOC 孤兒。(2) 新增 `title-map.tsv` zh↔en 標題對照表（73 對）作為單一真實來源。(3) `check-links.ps1` 擴充為同時驗證 wikilink 解析與中英對照完整性（`-SkipUrls` 數秒完成），並以負向測試確認守門有效。(4) 首頁補上**雙語入口**（中文 ↔ English）並新增英文著陸頁。(5) 為 3 篇零出站連結的新筆記補上互連（氣體調配、水下減壓理論、獨行潛水），中英各同步。全庫 860 條 wikilink 現皆可解析。

> 🆕 **2026-07-13 引用全面文章級化＋維護機制**：(1) 全庫 243 條網域首頁級參考連結逐條改為具體文章/文件 URL（官方手冊 PDF、標準文件、具名文章、具體討論串），關鍵來源以即時抓取核實、反爬網域以搜尋索引確認加註；來源不可尋者以等效可核實來源替換，安全數值維持雙獨立來源；引用體例第 1 條同步改寫。(2) 術語對照表增補 18 詞條（DSMB、Goodman Handle、Task Loading、Reverse Block、MOD/EAD 等）。(3) 新增安全數值年度複審制度（下次 2027-07）。(4) site repo 新增 check-links.ps1 連結健檢腳本。(5) 順手修正一處漏網簡體字（讨论→討論）。

> 🆕 **2026-07-13 增補 10 篇（缺口補完）**：依「多篇引用卻無專文」盤點新增——[[水面訊號浮標 (SMB & DSMB) 部署技巧]]、[[潛水燈具系統與 Goodman 握把配置]]、[[主流側掛系統橫向對比 (Katana 2、Nomad、WSX)]]、[[線纏繞應變與切割工具配置]]、[[耳壓平衡與耳部擠壓傷 (Barotrauma)]]、[[壓力心理與任務負荷 (Task Loading) 管理]]、[[高氧 Nitrox 基礎與 MOD 計算]]、[[減壓停留實務執行與氧氣減壓]]、[[台灣側掛潛點適用性指南]]、[[側掛裝備旅行打包與航空託運]]。引用採文章級 URL 並以即時抓取核實（DAN、Wikipedia、ProTec、Blue Culture、Viking Dives、DIPNDIVE、TK Diving、The Human Diver、Scuba Tech Philippines、Cave Diving Down Under、DIVE Magazine、GUE Quest 均抓取成功）；反爬/暫時離線網域（scubadiving.com、tdisdi.com、divernet.com 403；alertdiver.eu、vjjourney.com 503）依體例加註「以搜尋索引確認」。安全關鍵數值（PO₂ 1.4/1.6、O₂@6m、10 m/min、平壓頻率、DSMB 不扣身）皆有第二獨立來源。

> 🆕 **2026-07-13 用語在地化校訂**：全庫掃描並統一為台灣慣用語——「信號→訊號」（12 檔）、「反饋→回饋」、「塑料→塑膠」、介詞「通過→透過」（僅限「藉由」語意，物理穿越之「通過」保留）、「支持→支援/支撐/支應」（依語境）。專有名詞英文（Trim、Bungee、SMB、Long Hose 等）維持不變，以利國際流通。

> 🆕 **2026-07-07 規格數字二次校訂**：(a) **LPI 低壓充氣管長度**——第 5 孔軸向配置常用 15 cm（6 吋）、主流區間 30–38 cm，修正先前寫死之「35-45 cm/25-35 cm」（[[單氣瓶側掛配置與平衡技巧]]、[[側掛調節器與低壓高壓管線配置]]）；(b) **項圈短管**——22–24 吋=56–61 cm，修正「60-65 cm」換算不符（[[側掛調節器與低壓高壓管線配置]]）；(c) **Razor 4 BAT Wing 升力**——官方為主/備各 **45 lbs**（≈20 kg），修正「35 lbs」誤植（Razor 篇、BCD 篇、浮力失效篇共 4 檔）。

> 🆕 **2026-07-07 增補與校訂**：(1) **更正** PADI Sidemount Diver 先修要求（實為 OW Diver+滿15歲、無最低潛水次數，非「AOW 或 OW+30 潛」，並修正與 FAQ 之內部矛盾）；(2) **補入** 2025-09《Diving and Hyperbaric Medicine》NOAA 共識工作坊之 CNS 氧限修訂（PO₂ 1.3 atm 單次 180→240 min）；(3) **新增 4 篇**：[[浸泡性肺水腫 (IPE-SIPE) 識別與應變]]、[[側掛閉迴路循環呼吸器 (CCR) 整合概念]]、[[潛水保險與緊急後送規劃]]、[[二氧化碳滯留與呼吸功 (Hypercapnia)]]。新篇引用以即時抓取確認（indepthmag/tdisdi/scubadiving/uhms 反爬 403 已加註記，改以 DAN/PubMed/Divesoft 原廠等可抓取之一手或權威來源為主證）。

> 🆕 **2026-07-02 增補**：新增 24 篇筆記（適合族群、休閒/技術定位、蛙鞋面鏡、電腦錶AI、防寒衣配平、氣瓶選型、下潛懸停、二級頭管理、團隊溝通、入出水、減壓軟體與GF、氣體分析標示、失散迷失、DCI急救、CESA、失溫、救援拖帶、Trimix密度、DPV、沉船佈線、術語表、FAQ、二手裝備、日誌範本）。**全部引用已逐條核實**：每個來源 URL 以即時抓取確認存在並支持內文主張；安全關鍵數值（5.2/6.2 g/L 氣體密度上限、DCI 急救 SOP、失散氣量公式、濕衣壓縮實測值、救援呼吸節奏）另以第二獨立來源交叉驗證。無法抓取之網域（tdisdi.com、divegearexpress.com、dtmag.com、scubadiving.com、diverightinscuba.com 反爬蟲 403；thetheoreticaldiver.org 暫時 503）已於各篇文末標註，內容以搜尋索引確認。

> 🔄 **2026-06 審訂重點**：已更正氣閥「完全開啟、不回轉」之現代標準、Wookey Hole 地理、Rule of Sixths 名詞、Rock Bottom 問題處理保留量、乾衣備用浮力之限定條件等。詳見各篇內文標註。

---

## 🔙 導覽
- 返回主目錄：[[Sidemount_Diving_MOC|🌊 主目錄]]
