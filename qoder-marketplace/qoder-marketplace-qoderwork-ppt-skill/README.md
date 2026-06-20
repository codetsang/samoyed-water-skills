# QoderWork PPT / QoderWork 演示文稿

> 生成 QoderWork 风格演示文稿，根据主题自动匹配 14 种模板，输出可编辑的 `.pptx` 文件。

## 简介

本 skill 帮助 AI 根据用户主题与需求，自动生成结构化内容、匹配合适模板，并输出可编辑的 PowerPoint 文件。支持 14 种专业模板、智能版式匹配、高保真 HTML→PPTX 导出，以及 Lucide 图标与 AI 配图。

## 适用场景

- 需要生成 QoderWork 风格的演示文稿
- 根据主题快速产出结构化 PPT 内容
- 需要可编辑 `.pptx` 文件而非纯 Markdown 大纲

## 来源

- **类型**：转载（Qoder Marketplace 官方 skill）
- **链接**：[Qoder Skill Marketplace — QoderWork PPT](https://qoder.com/marketplace/skill?id=official48186468)
- **原作者**：QoderWork
- **收录日期**：2026-06-20
- **许可**：MIT

## 基本信息

| 字段 | 值 |
|------|-----|
| 文件夹 | `qoder-marketplace/qoder-marketplace-qoderwork-ppt/` |
| SKILL name | `qoderwork-ppt` |
| 版本 | 1.0.0 |
| 分类 | content-creation |
| 依赖 | Node.js 18+，`jsdom`、`puppeteer`、`dom-to-pptx`、`lucide-static` |

## 使用方式

1. 将本文件夹复制到 Agent 的 skill 目录
2. 安装依赖：`cd <skill目录> && npm install`
3. 对 Agent 说：「生成一份关于 [主题] 的 QoderWork 风格 PPT」

执行流程：生成 `output/content.md` → 匹配 `output/slides.json` → 填充 HTML 模板 → 转换为 `output/presentation.pptx`。

## 模板一览

| # | 模板 | 布局 |
|---|------|------|
| 01 | Cover | 标题 + 副标题 + 描述 |
| 02 | Contents | 章节目录 |
| 03 | Section Divider | 章节分隔页 |
| 04 | Left Text, Right Image | 左文右图 |
| 05 | One Column | 单栏卡片 |
| 06 | Two Columns | 双栏卡片 |
| 07 | Three Columns | 三栏卡片 |
| 08 | Four Columns | 四栏卡片 |
| 09 | Data Highlight | 数据高亮 |
| 10 | Quote | 引用页 |
| 11 | Timeline | 时间线 |
| 12 | Full Image | 全图背景 |
| 13 | Comparison | 对比页 |
| 14 | Thank You | 致谢页 |

## 文件说明

| 文件/目录 | 说明 |
|-----------|------|
| `SKILL.md` | 技能主文件，含完整执行流程 |
| `rules/` | 内容生成与模板匹配规则 |
| `templates/` | 14 个 HTML 模板与 `manifest.json` |
| `scripts/` | 校验、填充、转换与一键流水线脚本 |
| `package.json` | Node.js 依赖配置 |
| `README.md` | 本文件，介绍来源与基本信息 |
