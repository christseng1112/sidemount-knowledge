# Quartz v5

## 本站維護（sidemount-knowledge）

- **發布**：`.\publish.ps1` — 以 robocopy 同步 vault（中文 8 資料夾 + `en/` 8 資料夾）→ content/，commit 並 push，GitHub Actions 自動部署。
  - 註：`content/index.md` 與 `content/en/index.md`（雙語首頁）只存在於本 repo，不在 vault 內，publish 不會覆蓋它們。
- **健檢**：`.\check-links.ps1`
  - `-SkipUrls` — 只跑結構檢查（wikilink 解析 + 中英對照完整性），數秒完成。**每次編輯筆記後都該跑**。
  - 不加參數 — 追加外部連結檢查（數分鐘，已知反爬 403 網域列白名單），異常輸出至 `link-check-failures.csv`。建議每季或潛旅前跑。
- **`title-map.tsv`** — zh↔en 標題對照表（MOC 中英同名故不列）。**新增筆記時必須同步加一列**，check-links 會據此驗證中英對應。
  - 存在理由：2026-07-15 曾因翻譯漂移（同一篇在不同檔案被譯成不同英文標題）造成 `en/` 78 條 wikilink 斷鏈；本表 + wikilink 驗證是防止復發的機制。
- **CI 守門**：`.github/workflows/deploy.yml` 的 `validate` job 會在每次 push 先跑結構檢查（同 `-SkipUrls`），不過即擋下部署——**直接在 GitHub 網頁上的編輯與社群 PR 也受同樣保護**。

## 📝 新增一篇筆記的 SOP（缺一步都會留下地雷）

1. **寫中文筆記**到 vault 對應資料夾，照既有體例：frontmatter（`title` + `sidemount/<分類>` + `status/completed` tags）、emoji 段落標題、`[[wikilinks]]` 互連（bare 檔名式）、文末「📚 參考文獻與引用來源」用**文章級 URL**（先抓取核實；反爬 403 網域加 ⚠️ 註記）、安全關鍵數值找**第二獨立來源**、含計算就加「📋 假設與限制」框。
2. **加進分區 MOC**（`00_MOCs/<資料夾>_MOC.md`）一行條目。
3. **英文標題定案並寫進 `title-map.tsv`**（一列：資料夾 <TAB> 中文檔名 <TAB> 英文檔名）——先定標題再翻譯，防止翻譯漂移。
4. **翻譯英文版**到 `en/` 對應資料夾，檔名照 title-map；en 內的 wikilink 用**完整路徑式** `[[en/資料夾/英文檔名|顯示文字]]`（與中文 bare 式不同）。英文分區 MOC 也加條目。
5. **`.\check-links.ps1 -SkipUrls`** ——數秒，wikilink 與對照表全綠才算完。
6. **`00_MOCs/Changelog.md`** 加一條更新紀錄（僅中文維護）。
7. **`.\publish.ps1`** 發布；CI 的 validate 會再守一次門。


> “[One] who works with the door open gets all kinds of interruptions, but [they] also occasionally gets clues as to what the world is and what might be important.” — Richard Hamming

Quartz is a set of tools that helps you publish your [digital garden](https://jzhao.xyz/posts/networked-thought) and notes as a website for free.

🔗 Read the documentation and get started: https://quartz.jzhao.xyz/

[Join the Discord Community](https://discord.gg/cRFFHYye7t)

## Sponsors

<p align="center">
  <a href="https://github.com/sponsors/jackyzha0">
    <img src="https://cdn.jsdelivr.net/gh/jackyzha0/jackyzha0/sponsorkit/sponsors.svg" />
  </a>
</p>
