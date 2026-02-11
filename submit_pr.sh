#!/bin/bash

# PR 提交脚本 - Draw.io Architecture Skill

set -e

echo "================================"
echo "提交技能到 Awesome Claude Skills"
echo "================================"
echo ""

REPO="moon09300731/drawio-architecture-skill"
TARGET="travisvn/awesome-claude-skills"
BRANCH="add-drawio-architecture-skill"

echo "仓库: $REPO"
echo "目标: $TARGET"
echo "分支: $BRANCH"
echo ""

# 检查当前目录
if [ ! -f "SKILL.md" ]; then
    echo "❌ 错误：请在技能目录中运行此脚本"
    exit 1
fi

echo "步骤 1/5: Fork 目标仓库..."
echo "访问: https://github.com/$TARGET/fork"
echo ""
read -p "Fork 完成后按 Enter 继续..."
echo ""

echo "步骤 2/5: 克隆你的 Fork..."
# 克隆用户的 fork（需要用户替换为他们的 fork 地址）
echo "请执行以下命令（替换 YOUR_USERNAME 为你的 GitHub 用户名）："
echo ""
echo "  git clone https://github.com/YOUR_USERNAME/awesome-claude-skills.git"
echo "  cd awesome-claude-skills"
echo "  git checkout -b $BRANCH"
echo ""
read -p "完成后按 Enter 继续..."
echo ""

echo "步骤 3/5: 编辑 README.md..."
echo "在 README.md 中添加以下内容："
echo ""
cat << 'EOF'
### Diagramming & Visualization

- **[Draw.io Architecture Skill](https://github.com/moon09300731/drawio-architecture-skill)** - Create professional architecture diagrams, flowcharts, and system diagrams using draw.io MCP tools for Claude Code
EOF
echo ""
echo "在合适的位置（按字母顺序 D 部分）添加上述内容"
echo ""
read -p "编辑完成后按 Enter 继续..."
echo ""

echo "步骤 4/5: 提交更改..."
echo "请执行以下命令："
echo ""
echo "  git add README.md"
echo "  git commit -m \"Add: Draw.io Architecture Skill\""
echo "  git push origin $BRANCH"
echo ""
read -p "推送完成后按 Enter 继续..."
echo ""

echo "步骤 5/5: 创建 Pull Request..."
echo "请执行以下命令："
echo ""
echo "  gh pr create --title \"Add: Draw.io Architecture Skill\" --body \"See commit details\""
echo ""
echo "或者访问: https://github.com/YOUR_USERNAME/awesome-claude-skills/compare/main...add-drawio-architecture-skill"
echo ""
echo "================================"
echo "准备材料"
echo "================================"
echo ""
echo "PR 标题: Add: Draw.io Architecture Skill"
echo ""
echo "PR 描述模板:"
echo ""
cat << 'EOF'
## Add: Draw.io Architecture Skill

### Skill Information
**Name**: Draw.io Architecture Skill
**Repository**: https://github.com/moon09300731/drawio-architecture-skill
**Category**: Diagramming & Visualization

### Description
Create professional architecture diagrams, flowcharts, and system diagrams using draw.io MCP tools for Claude Code.

### Features
- ✅ Multiple diagram types (architecture, UML, flowcharts, sequence diagrams)
- ✅ 7 predefined color schemes for consistent styling
- ✅ Rich style guide with node shapes and edge types
- ✅ Multiple export formats (.drawio, .png, .svg, .pdf)
- ✅ Real-time browser preview
- ✅ Comprehensive documentation

### Use Cases
- System Architecture Design
- Data Flow Documentation
- UML Modeling
- Technical Documentation
- Architecture Reviews

### Installation
\`\`\`bash
curl -fsSL https://raw.githubusercontent.com/moon09300731/drawio-architecture-skill/main/install.sh | bash
\`\`\`

### Example Usage
In Claude Code, simply say:
- "Draw an architecture diagram for a microservices system"
- "Create a data flow diagram for user authentication"

### Screenshots
![Icon](https://github.com/moon09300731/drawio-architecture-skill/raw/main/icon.png)
![Example](https://github.com/moon09300731/drawio-architecture-skill/raw/main/example-architecture.png)

### Documentation
- [README](https://github.com/moon09300731/drawio-architecture-skill/blob/main/README.md)
- [Skill Guide](https://github.com/moon09300731/drawio-architecture-skill/blob/main/SKILL.md)
- [Publishing Guide](https://github.com/moon09300731/drawio-architecture-skill/blob/main/PUBLISHING.md)

### License
MIT

### Additional Notes
- Based on Model Context Protocol (MCP)
- Compatible with draw.io MCP server
- Active maintenance and community feedback welcome
EOF
echo ""
echo "================================"
echo "完成！"
echo "================================"
echo ""
echo "材料已保存在 SKILL_SUBMISSION.md 中"
echo "你可以复制粘贴 PR 描述"
echo ""
