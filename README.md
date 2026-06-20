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

## 目录结构

```
samoyed-water-skills-git/
├── README.md                 # 本文件
├── qoder-nature-writting/    # 自然写作 Skill
│   └── SKILL.md
└── ...                       # 更多 Skill / Rule 将陆续加入
```

每个 Skill 以独立文件夹存放，核心文件为 `SKILL.md`（含 YAML 元数据与正文说明）。可选附带 `reference.md`、`examples.md`、脚本等辅助文件。

---

## 技能目录

| 文件夹 | 名称 | 说明 | 来源 |
|--------|------|------|------|
| [`qoder-nature-writting/`](qoder-nature-writting/) | Natural Writing | 让 AI 写出更像人写的文字，减少「AI 味」 | [Qoder Marketplace](https://qoder.com/marketplace/skill?id=official_yiUuEwlt) |

> 有新技能？欢迎提 Issue 或 PR，我们会更新上表。

---

## 如何使用

### 在 Cursor 中使用 Skill

1. 将对应文件夹复制到以下位置之一：
   - **个人全局**：`~/.cursor/skills/<skill-name>/`
   - **当前项目**：`<项目根目录>/.cursor/skills/<skill-name>/`
2. 确保文件夹内有 `SKILL.md`。
3. 在对话中提及相关任务（如「帮我润色这段文字，要更自然」），Agent 会根据 `description` 自动匹配并读取该 Skill。

> 注意：请勿将技能放入 `~/.cursor/skills-cursor/`，该目录为 Cursor 内置技能保留。

### 在 Qoder 中使用

部分技能来自 [Qoder Skill Marketplace](https://qoder.com/marketplace)。你也可以直接将本仓库中的 `SKILL.md` 导入或复制到 Qoder 的自定义 Skill 配置中。

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

### 新增 Skill 的推荐格式

```
your-skill-name/
├── SKILL.md          # 必需
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

- 文件夹名：小写英文 + 连字符，如 `nature-writing`、`pr-review`
- `name` 字段：与文件夹名保持一致或语义相近
- 若源自第三方市场，可在文件夹内保留来源链接（如 `.webloc` 或 `SOURCE.md`）

---

## 许可与致谢

- 各 Skill 的版权归原作者所有；本仓库注明来源并仅供学习与交流使用。
- 从 Qoder、Cursor 社区等渠道收录的技能，请保留原始出处信息。
- 若你认为某内容侵犯权益，请通过 Issue 联系我们，我们会及时处理。

---

## 关于名字

**萨摩耶的水技能包** — 像萨摩耶一样友好、好用，把「水」一样流动的经验与技巧汇聚成池，供大家随时取用。

有问题或想法？欢迎开 Issue 讨论。🐾
