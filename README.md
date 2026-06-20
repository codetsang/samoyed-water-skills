# 萨摩耶的水技能包 🐾

一个面向所有人的 **大模型 Skill 与 Rule 共享仓库**。

无论你是 Cursor、Qoder、Claude Code 还是其他支持 Agent Skills 的工具用户，都可以在这里找到、使用和贡献高质量的提示词技能包与规则文件，让 AI 助手更懂你的场景、更贴近你的习惯。

---

## 这是什么？

**Skill（技能）** 是写给 AI 的专项指南：告诉模型在特定任务下该怎么思考、怎么输出。例如「自然写作」「学术论文润色」「代码审查规范」等。

**Rule（规则）** 是更持久的约束与偏好：跨对话生效的写作风格、项目约定、安全边界等。

本仓库把散落在各处的 Skill 和 Rule 集中整理，方便：

- **取用** — 复制到本地即可使用
- **分享** — 一条链接发给同事或社区
- **共建** — 提交 PR，一起扩充技能库

---

## 两类 Skill：整理与优化

本仓库将 Skill 按来源与处理方式分为两层目录，职责清晰、便于对照：

### `qoder-marketplace/` — 第三方 Skill 整理

收录来自 [Qoder Skill Marketplace](https://qoder.com/marketplace) 等渠道的**原版 skill**，做统一归档，**不改动** `SKILL.md` 正文。

整理原则：

| 原则 | 说明 |
|------|------|
| **忠实转载** | 从官方市场下载原版 zip，保持 `SKILL.md` 与上游一致 |
| **来源可追溯** | 每个 skill 文件夹必有 `README.md`，写明市场链接、作者、许可与收录日期 |
| **命名规范** | 文件夹统一为 `qoder-marketplace-<skill-name>-skill/`，标明来源平台 |
| **即拷即用** | 可直接复制到 `~/.cursor/skills/` 或 Qoder 客户端使用 |

适合：想使用**未经改动的官方版本**、需要与上游对照、或作为 fork 基线。

### 耶耶优化版（`samoyed/`）

在 `qoder-marketplace/` 原版基础上，由 **耶耶** 做**有记录的 fork 与改写**，针对实际使用场景补强工作流、输出策略与示例。

优化原则：

| 原则 | 说明 |
|------|------|
| **fork 有据** | 每个改版 skill 在 `README.md` 中列出相对上游的 diff 表 |
| **改动可追** | `SKILL.md` 文末附修改日志，记录每次语义变更 |
| **职责分离** | 改版与原版分目录存放，避免覆盖上游文件 |
| **命名区分** | 文件夹为 `samoyed-<来源>-<skill-name>-skill/`，一眼可辨改版身份 |

适合：需要**针对中文/学术/团队场景优化**、希望自动分流输出策略、或要与原版并排对比时。

> **选用建议**：默认用 `samoyed/` 耶耶优化版；若需严格对齐 Qoder 官方行为，用 `qoder-marketplace/` 原版。两者 `SKILL.md` 中 `name` 字段可相同，安装时请注意文件夹名区分。

---

## 目录结构

```
samoyed-water-skills-git/
├── README.md                 # 本文件
├── qoder-marketplace/        # 第三方 skill 整理（原版转载）
│   ├── qoder-marketplace-nature-writting-skill/
│   ├── qoder-marketplace-translation-skill/
│   └── qoder-marketplace-qoderwork-ppt-skill/
├── samoyed/                  # 耶耶优化版
│   └── samoyed-qoder-marketplace-translation-skill/
└── ...                       # 更多 Skill / Rule 将陆续加入
```

每个 Skill 以独立文件夹存放，**必须**包含：

- `README.md` — 来源、适用场景、与上游 diff（改版 skill 必需）
- `SKILL.md` — 技能主文件（含 YAML 元数据与正文说明）

可选附带 `reference.md`、`examples.md`、`scripts/`、`templates/` 等辅助文件。

---

## 技能目录

### 第三方整理（`qoder-marketplace/`）

| 文件夹 | 名称 | 说明 | 来源 |
|--------|------|------|------|
| [`qoder-marketplace/qoder-marketplace-nature-writting-skill/`](qoder-marketplace/qoder-marketplace-nature-writting-skill/) | Natural Writing | 让 AI 写出更像人写的文字，减少「AI 味」 | [Qoder Marketplace](https://qoder.com/marketplace/skill?id=official_yiUuEwlt) |
| [`qoder-marketplace/qoder-marketplace-translation-skill/`](qoder-marketplace/qoder-marketplace-translation-skill/) | Translation | 多语言翻译，兼顾文化适配与术语一致性 | [Qoder Marketplace](https://qoder.com/marketplace/skill?id=official_z9j4cquB) |
| [`qoder-marketplace/qoder-marketplace-qoderwork-ppt-skill/`](qoder-marketplace/qoder-marketplace-qoderwork-ppt-skill/) | QoderWork PPT | 生成 QoderWork 风格演示文稿，自动匹配 14 种模板 | [Qoder Marketplace](https://qoder.com/marketplace/skill?id=official48186468) |

### 耶耶优化版（`samoyed/`）

| 文件夹 | 名称 | 基于上游 | 主要优化 |
|--------|------|----------|----------|
| [`samoyed/samoyed-qoder-marketplace-translation-skill/`](samoyed/samoyed-qoder-marketplace-translation-skill/) | Translation（耶耶优化版） | [Translation 原版](qoder-marketplace/qoder-marketplace-translation-skill/) | 源文表达审查；按问题自动单译/双译；精修译与源文修改对照表 |

> 有新技能？欢迎提 Issue 或 PR，我们会更新上表。

---

## 如何使用

### 在 Cursor 中使用 Skill

1. 从 `qoder-marketplace/`（原版）或 `samoyed/`（耶耶优化版）选取文件夹，复制到：
   - **个人全局**：`~/.cursor/skills/<folder-name>/`
   - **当前项目**：`<项目根目录>/.cursor/skills/<folder-name>/`
2. 确保文件夹内有 `SKILL.md`；含 `package.json` 的 skill（如 QoderWork PPT）需先执行 `npm install`。
3. 在对话中描述任务，Agent 会根据 `description` 自动匹配并读取该 Skill。

> 注意：请勿将技能放入 `~/.cursor/skills-cursor/`，该目录为 Cursor 内置技能保留。

### 在 Qoder 中使用

部分技能来自 [Qoder Skill Marketplace](https://qoder.com/marketplace)。`qoder-marketplace/` 下的文件夹与官方市场内容一致，可直接导入 Qoder 客户端；`samoyed/` 耶耶优化版请按需复制 `SKILL.md` 到自定义 Skill 配置。

### 作为 Rule 使用

若某份文档更适合作为长期规则（如团队代码规范），可：

- 在 Cursor 中放入 `.cursor/rules/` 并以 `.mdc` 或项目约定格式引用
- 或复制关键段落到你的用户级 Rules 设置

具体路径因工具版本而异，以你所用客户端的文档为准。

---

## 如何贡献

我们欢迎任何形式的贡献：

1. **Fork** 本仓库
2. 按下方规范新增或更新 Skill / Rule
3. 在 README 的「技能目录」表中补充一行说明
4. 提交 **Pull Request**，简要描述用途与适用场景

### 新增第三方 skill（整理）

放入 `qoder-marketplace/`，保持 `SKILL.md` 与上游一致，并在 `README.md` 中注明来源链接。

### 新增耶耶优化版

放入 `samoyed/`，在 `README.md` 中提供相对上游的 diff 表，在 `SKILL.md` 文末维护修改日志。

### 推荐文件夹格式

```
your-skill-name/
├── README.md         # 必需：来源与基本信息（改版须含 diff）
├── SKILL.md          # 必需：技能主文件
├── reference.md      # 可选：详细参考
├── examples.md       # 可选：示例
└── scripts/          # 可选：辅助脚本
```

`SKILL.md` 建议包含 YAML frontmatter：

```yaml
---
name: your-skill-name
description: >
  简要说明技能做什么，以及在什么情况下应触发使用。
---
```

`description` 写清楚「做什么」和「何时用」，模型才能自动选对技能。

### 命名建议

- 第三方整理：`qoder-marketplace-<skill-name>-skill/`
- 耶耶优化版：`samoyed-<来源>-<skill-name>-skill/`
- `name` 字段可与上游保持一致，便于 `@` 引用；以**文件夹名**区分安装路径
- **每个 skill 文件夹必须有 `README.md`**，写明来源链接与基本信息

---

## 许可与致谢

- 各 Skill 的版权归原作者所有；本仓库注明来源并仅供学习与交流使用。
- 从 Qoder、Cursor 社区等渠道收录的技能，请保留原始出处信息。
- `samoyed/` 耶耶优化版基于上游开源 skill，遵循原许可并在 README 中标注 fork 关系。
- 若你认为某内容侵犯权益，请通过 Issue 联系我们，我们会及时处理。

---

## 关于名字

**萨摩耶的水技能包** — 「水」取网络用语里「很水」的自嘲义：技能未必顶尖，但够用、好分享、不端架子。萨摩耶负责友好；「水技能」负责诚实——这里收录的是能拿来就用、值得一起打磨的 prompt 与规则，而非什么高深秘传。

有问题或想法？欢迎开 Issue 讨论。🐾
