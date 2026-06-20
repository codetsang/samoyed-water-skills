# Translation / 翻译（Samoyed 改版）

> 在不同语言之间翻译文本，兼顾文化适配、术语一致性与多种文档类型；**在忠实翻译之外，可按源文质量自动决定是否附带精修译文**。

## 简介

本 skill 基于 [Qoder Marketplace — Translation](https://qoder.com/marketplace/skill?id=official_z9j4cquB)（seb1n / awesome-ai-agent-skills）**fork 并改写**。保留原 skill 的格式保留、术语一致与文化本地化要求；在此基础上增加**源文表达审查**与**单/双输出自动分流**，避免对干净原文强行给出两套译文，也避免对问题原文只做字面直译。

## 适用场景

- 将内容翻译为目标语言（技术文档、营销、UI、法律、学术论文等）
- 源文可能有英文 AI 腔或学术冗语，希望在**不混进译文**的前提下可选给出精修对照
- 需要术语一致、文化本地化，并保留 Markdown / HTML / JSON 与占位符

## 相对原 skill 的修改

| 位置 | 原版（`qoder-marketplace/qoder-marketplace-translation-skill/`） | 本仓库改版 |
|------|------|------------|
| 工作流第 2 步 | 无 | 新增 **Audit the Source for Expression Problems**：翻译前先列出源文表达问题，并**据此决定输出模式** |
| 输出策略 | 默认只给一份译文 | 新增 **Output Modes (Auto-Triggered)**：无实质问题 → 单译；有问题 → 忠实译 + 精修译 |
| 双输出交付格式 | 无 | 固定顺序：(1) 源文审查 (2) 忠实译 (3) 精修译 (4) **源文修改 / Source edits** 对照表 |
| 示例 | 2 个 | 保留原 2 例，新增 **Example 3**（英→中学术句，演示审查触发双输出） |
| `SKILL.md` 文末 | 无 | 追加 **修改日志** |
| 存放位置 | `qoder-marketplace/` 转载目录 | `samoyed/` 改版目录 |

**未改动的部分**：`name: translation`、MIT 许可、workflow 步骤 1 与 3–7 的核心意图，以及原 Example 1、Example 2。

## 来源

- **类型**：fork（Qoder Marketplace 官方 skill + 本仓库改写）
- **上游链接**：[Qoder Skill Marketplace — Translation](https://qoder.com/marketplace/skill?id=official_z9j4cquB)
- **上游作者**：seb1n
- **上游 GitHub**：[awesome-ai-agent-skills / translation](https://github.com/seb1n/awesome-ai-agent-skills/tree/main/writing-and-content/translation)
- **本仓库 fork 日期**：2026-06-20
- **许可**：MIT（见 `SKILL.md` frontmatter）

## 基本信息

| 字段 | 值 |
|------|-----|
| 仓库路径 | `samoyed/samoyed-qoder-marketplace-translation-skill/` |
| SKILL name | `translation`（与 upstream 相同，便于 `@translation` 引用） |
| 版本 | 1.0.0（metadata）；语义上为 **1.1.0-fork** |
| 分类 | docs-writing |
| 语言 | 英文（skill 正文）；本 README 为中文说明 |

## 安装与使用

```bash
# 复制到 Cursor 全局 skill 目录
cp -r samoyed/samoyed-qoder-marketplace-translation-skill \
  ~/.cursor/skills/samoyed-qoder-marketplace-translation-skill
```

在对话中说明目标语言与文本即可，例如：

> 将以下段落译为中文（学术、正式）。若源文有表达问题，按 skill 规则给出审查与双译。

## 文件说明

| 文件 | 说明 |
|------|------|
| `SKILL.md` | 技能主文件（含改版工作流、Output Modes、示例 3、修改日志） |
| `README.md` | 本文件：来源、相对原 skill 的 diff、安装方式 |

## 与 Natural Writing skill 的配合

学术或长文翻译时，可与 `qoder-marketplace/qoder-marketplace-nature-writting-skill/` 联用：**先**用本 skill 做审查与忠实/精修双译决策，**再**对英文源稿或精修稿做自然写作改写；二者职责分离，避免在译文中偷偷改源文逻辑。

## 修改日志

| 日期 | 说明 |
|------|------|
| 2026-06-20 | 修正 README：仓库路径改为 `samoyed/`，补充安装说明，对齐上游对照表 |
| 2026-06-20 | 文件夹置于 `samoyed/`，README 补充相对 Qoder 原 skill 的改动说明 |
| 2026-06-20 | 初稿：fork 说明与 upstream 索引 |
