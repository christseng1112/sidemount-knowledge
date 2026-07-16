# Quartz v5

## 本站維護（sidemount-knowledge）

- **發布**：`.\publish.ps1` — 以 robocopy 同步 vault（中文 8 資料夾 + `en/` 8 資料夾）→ content/，commit 並 push，GitHub Actions 自動部署。
  - 註：`content/index.md` 與 `content/en/index.md`（雙語首頁）只存在於本 repo，不在 vault 內，publish 不會覆蓋它們。
- **健檢**：`.\check-links.ps1`
  - `-SkipUrls` — 只跑結構檢查（wikilink 解析 + 中英對照完整性），數秒完成。**每次編輯筆記後都該跑**。
  - 不加參數 — 追加外部連結檢查（數分鐘，已知反爬 403 網域列白名單），異常輸出至 `link-check-failures.csv`。建議每季或潛旅前跑。
- **`title-map.tsv`** — zh↔en 標題對照表（73 對，MOC 中英同名故不列）。**新增筆記時必須同步加一列**，check-links 會據此驗證中英對應。
  - 存在理由：2026-07-15 曾因翻譯漂移（同一篇在不同檔案被譯成不同英文標題）造成 `en/` 78 條 wikilink 斷鏈；本表 + wikilink 驗證是防止復發的機制。


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
