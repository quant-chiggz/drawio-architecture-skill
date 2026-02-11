# 技能市场提交指南

## 📋 发现的社区仓库

### 1. Awesome Claude Skills（官方列表）⭐

**仓库**: https://github.com/travisvn/awesome-claude-skills

**描述**: A curated list of awesome Claude Skills, resources, and tools for customizing Claude AI workflows — particularly Claude Code

**标签**: awesome, claude-skills, claude-code, anthropic

**状态**: 活跃维护

---

### 2. Claude Code Skills Collection

**仓库**: https://github.com/levnikolaevich/claude-code-skills

**描述**: Production-ready skills covering the full delivery workflow

**标签**: claude-code, skills, workflow

---

### 3. SkillsMP（技能市场）

**网站**: https://skillsmp.com/

**描述**: An Agent Skills Marketplace for Claude, Codex & ChatGPT skills

**类型**: 商业市场平台

---

## 🎯 推荐提交策略

### 优先级 1: Awesome Claude Skills（推荐）⭐

这是最活跃的社区列表，提交方式是 **Pull Request**。

#### 准备材料

需要提供以下信息：

1. **仓库名称**: `drawio-architecture`
2. **仓库描述**: Draw.io architecture diagramming skill for Claude Code
3. **仓库 URL**: https://github.com/moon09300731/drawio-architecture-skill
4. **分类**: Diagramming & Visualization（或建议的新分类）
5. **标签**:
   - drawio
   - architecture-diagram
   - diagramming
   - visualization
   - uml
   - flowchart

#### PR 内容模板

```markdown
## Add: Draw.io Architecture Skill

### Skill Name
Draw.io Architecture Skill

### Description
Create professional architecture diagrams, flowcharts, and system diagrams using draw.io MCP tools for Claude Code.

### Repository
https://github.com/moon09300731/drawio-architecture-skill

### Category
Diagramming & Visualization

### Features
- Professional architecture diagrams (system, project, data flow)
- UML diagrams (class, sequence, state, component)
- Flowcharts and process diagrams
- 7 predefined color schemes
- Multiple export formats (.drawio, .png, .svg, .pdf)
- Rich style guide with best practices

### Screenshots
[Add screenshot URL if available]

### Installation
\`\`\`bash
curl -fsSL https://raw.githubusercontent.com/moon09300731/drawio-architecture-skill/main/install.sh | bash
\`\`\`

### License
MIT

### Additional Notes
- Based on Model Context Protocol (MCP)
- Compatible with draw.io MCP server
- Supports real-time browser preview
- Comprehensive documentation included
```

#### PR 提交步骤

1. **Fork 仓库**
   ```bash
   gh repo fork travisvn/awesome-claude-skills
   ```

2. **克隆 Fork**
   ```bash
   git clone https://github.com/moon09300731/awesome-claude-skills.git
   cd awesome-claude-skills
   ```

3. **创建新分支**
   ```bash
   git checkout -b add-drawio-architecture-skill
   ```

4. **编辑 README.md**
   - 在合适的位置添加你的技能
   - 保持格式一致
   - 按字母顺序排列

5. **提交更改**
   ```bash
   git add README.md
   git commit -m "Add: Draw.io Architecture Skill"
   git push origin add-drawio-architecture-skill
   ```

6. **创建 Pull Request**
   ```bash
   gh pr create --title "Add: Draw.io Architecture Skill" --body "See commit details"
   ```

---

### 优先级 2: SkillsMP 市场平台

这是一个商业化的技能市场平台。

#### 提交材料

1. **技能名称**: Draw.io Architecture Skill
2. **技能描述**: （200 字以内）
   > Create professional architecture diagrams, flowcharts, and UML diagrams using natural language in Claude Code. Features 7 color schemes, multiple export formats, and comprehensive best practices guide.

3. **分类**: Diagramming & Design
4. **标签**: drawio, architecture, uml, flowchart, diagram, claude-code
5. **图标**: (建议提供 256x256 PNG)
6. **截图**: (至少 3 张)
   - 示例架构图
   - 安装过程
   - 使用演示

#### 提交方式

访问: https://skillsmp.com/submit
（需要注册账号）

---

### 优先级 3: Claude Code Skills Collection

**仓库**: https://github.com/levnikolaevich/claude-code-skills

#### 提交方式

创建 Issue 或 Pull Request，建议内容：

```markdown
## Feature Request: Add Draw.io Architecture Skill

### Skill Information
- **Name**: Draw.io Architecture Skill
- **Repository**: https://github.com/moon09300731/drawio-architecture-skill
- **Category**: Diagramming & Visualization

### Why Include This Skill?
- Fills gap in diagramming tools for Claude Code
- Professional-grade output quality
- Comprehensive documentation
- Active maintenance
- Open source (MIT license)

### Key Features
1. Multiple diagram types (architecture, UML, flowcharts)
2. 7 predefined color schemes
3. Rich style guide
4. Multiple export formats
5. Real-time browser preview

### Use Cases
- System architecture design
- Data flow documentation
- UML modeling
- Technical documentation
- Architecture reviews

### Installation
\`\`\`bash
curl -fsSL https://raw.githubusercontent.com/moon09300731/drawio-architecture-skill/main/install.sh | bash
\`\`\`
```

---

## 📝 需要提供的材料清单

### 必需材料 ✅

- [x] GitHub 仓库地址
- [x] 技能描述（简短版）
- [x] 技能描述（详细版）
- [ ] 技能图标/Logo (256x256 PNG)
- [ ] 截图（至少 2-3 张）
- [ ] 安装命令
- [ ] 使用示例
- [ ] 许可证信息

### 可选材料 🔹

- [ ] 演示视频（YouTube 链接）
- [ ] 使用教程链接
- [ ] FAQ 文档
- [ ] 贡献指南
- [ ] 变更日志

---

## 🎨 推荐的视觉材料

### 1. 技能图标（Icon）

**尺寸**: 256x256 PNG（透明背景）

**设计建议**：
- 使用 draw.io 的标志性元素
- 加入 Claude Code 的风格
- 简洁、易识别
- 在小尺寸下清晰可见

**工具推荐**：
- [Canva](https://www.canva.com/)
- [Figma](https://www.figma.com/)
- draw.io 本身

### 2. 截图（Screenshots）

**截图 1: 示例架构图**
- 展示完整的系统架构图
- 包含多个层次（数据层、模型层、推理层等）
- 展示配色方案

**截图 2: 使用演示**
- Claude Code 对话界面
- 自然语言输入
- 生成的图表预览

**截图 3: 安装过程**
- 终端命令执行
- 安装成功的提示

### 3. 演示 GIF（可选）

**时长**: 15-30 秒

**展示内容**：
1. 在 Claude Code 中输入需求
2. 按回车
3. 图表生成
4. 在浏览器中预览

**工具推荐**：
- [Kap](https://kap.so/) (macOS)
- [LICEcap](https://www.cockos.com/licecap/) (跨平台)
- [CleanShot X](https://cleanshot.com/) (macOS)

---

## 📧 PR/Issue 模板

### Awesome Claude Skills PR 模板

```markdown
<!-- 简短标题 -->
Add: [Skill Name] - [One-line description]

<!-- 详细的技能描述 -->

## Skill Information

**Name**: Draw.io Architecture Skill

**Description**: Create professional architecture diagrams, flowcharts, and system diagrams using draw.io MCP tools for Claude Code.

**Repository**: https://github.com/moon09300731/drawio-architecture-skill

**Category**: Diagramming & Visualization

**Tags**: drawio, architecture, uml, flowchart, diagram, visualization, mcp

## Features

- ✅ Multiple diagram types (architecture, UML, flowcharts, sequence diagrams)
- ✅ 7 predefined color schemes for consistent styling
- ✅ Rich style guide with node shapes and edge types
- ✅ Multiple export formats (.drawio, .png, .svg, .pdf)
- ✅ Real-time browser preview
- ✅ Comprehensive documentation

## Use Cases

1. **System Architecture Design**: Visualize system components and their relationships
2. **Data Flow Documentation**: Document how data flows through the system
3. **UML Modeling**: Create class diagrams, sequence diagrams, state diagrams
4. **Technical Documentation**: Add professional diagrams to technical docs
5. **Architecture Reviews**: Prepare diagrams for architecture review meetings

## Installation

```bash
curl -fsSL https://raw.githubusercontent.com/moon09300731/drawio-architecture-skill/main/install.sh | bash
```

## Example Usage

In Claude Code, simply say:
- "Draw an architecture diagram for a microservices system"
- "Create a data flow diagram for user authentication"
- "Generate a UML class diagram for an e-commerce system"

## Screenshots

![Architecture Diagram Example](https://raw.githubusercontent.com/moon09300731/drawio-architecture-skill/main/examples/architecture-example.png)

## Documentation

- [README](https://github.com/moon09300731/drawio-architecture-skill/blob/main/README.md)
- [Publishing Guide](https://github.com/moon09300731/drawio-architecture-skill/blob/main/PUBLISHING.md)
- [Skill Documentation](https://github.com/moon09300731/drawio-architecture-skill/blob/main/SKILL.md)

## License

MIT

## Additional Notes

- Based on Model Context Protocol (MCP)
- Compatible with draw.io MCP server
- Supports both local and remote draw.io instances
- Active maintenance and community feedback welcome
```

---

## 🚀 快速提交命令

### 一键提交到 Awesome Claude Skills

```bash
# 1. Fork 仓库
gh repo fork travisvn/awesome-claude-skills --clone

# 2. 进入目录
cd awesome-claude-skills

# 3. 创建分支
git checkout -b add-drawio-architecture-skill

# 4. 编辑 README（手动添加你的技能）
# 使用你喜欢的编辑器打开 README.md

# 5. 提交
git add README.md
git commit -m "Add: Draw.io Architecture Skill"
git push origin add-drawio-architecture-skill

# 6. 创建 PR
gh pr create --title "Add: Draw.io Architecture Skill" \
  --body "Professional draw.io diagramming skill for Claude Code"
```

---

## 📊 预期时间线

| 步骤 | 时间 |
|------|------|
| 准备材料（图标、截图） | 30-60 分钟 |
| Fork 和编辑仓库 | 15 分钟 |
| 提交 Pull Request | 5 分钟 |
| 等待审核 | 1-7 天 |
| PR 合并 | 即时 |

**总计**: 约 1-2 小时准备 + 1-7 天等待

---

## ✅ 检查清单

提交前确认：

- [ ] 仓库公开可见
- [ ] README.md 清晰完整
- [ ] LICENSE.txt 存在
- [ ] 安装脚本可执行
- [ ] 至少 2 个示例图片
- [ ] 技能描述准确
- [ ] 标签选择合适
- [ ] 无敏感信息
- [ ] 代码符合规范
- [ ] 文档无错误

---

## 🎯 我可以帮你做什么？

1. **生成 PR 内容**: 基于仓库信息自动生成
2. **创建截图**: 从已有图表生成 PNG
3. **设计图标**: 使用 draw.io 创建技能图标
4. **编辑 README**: 修改 awesome-list 的 README
5. **提交 PR**: 直接创建 Pull Request
6. **创建 Issue**: 在其他仓库提 Feature Request

**请告诉我你想先做什么！**

---

## 📚 参考资源

- [Awesome Claude Skills](https://github.com/travisvn/awesome-claude-skills)
- [SkillsMP Market](https://skillsmp.com/)
- [GitHub Pull Request Guide](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests)

---

**准备好后告诉我，我会帮你完成整个提交流程！** 🚀
