# 发布指南

本指南将帮助你将 `drawio-architecture-skill` 发布到 GitHub。

## 方法 1：使用 GitHub CLI（推荐）

如果已安装 GitHub CLI：

```bash
# 1. 登录 GitHub
gh auth login

# 2. 创建仓库并推送
cd /tmp/drawio-architecture-skill
gh repo create drawio-architecture-skill --public --source=. --remote=origin --push
```

## 方法 2：使用 HTTPS + Personal Access Token

### 步骤 1：创建 GitHub Personal Access Token

1. 访问：https://github.com/settings/tokens
2. 点击 "Generate new token" → "Generate new token (classic)"
3. 设置权限：
   - ✅ `repo` (完整仓库访问权限)
4. 点击 "Generate token"
5. **重要**：复制生成的 token（只显示一次）

### 步骤 2：在 GitHub 创建仓库

1. 访问：https://github.com/new
2. 设置：
   - **Repository name**: `drawio-architecture-skill`
   - **Description**: `Draw.io architecture diagramming skill for Claude Code`
   - **Public**: ✅
   - **不要**勾选 "Add a README file"
3. 点击 "Create repository"

### 步骤 3：推送代码

```bash
cd /tmp/drawio-architecture-skill

# 添加远程仓库
git remote add origin https://github.com/moon09300731/drawio-architecture-skill.git

# 推送到 GitHub
git branch -M main
git push -u origin main
```

当提示输入密码时：
- **用户名**: `moon09300731`
- **密码**: 粘贴你的 Personal Access Token（不是 GitHub 密码）

## 方法 3：使用 SSH（最安全）

### 步骤 1：生成 SSH 密钥

```bash
# 生成新的 SSH 密钥
ssh-keygen -t ed25519 -C "lxyfyj131004@gmail.com"

# 启动 ssh-agent
eval "$(ssh-agent -s)"

# 添加密钥到 ssh-agent
ssh-add ~/.ssh/id_ed25519
```

### 步骤 2：添加 SSH 密钥到 GitHub

1. 复制公钥：
   ```bash
   cat ~/.ssh/id_ed25519.pub
   ```

2. 添加到 GitHub：
   - 访问：https://github.com/settings/keys
   - 点击 "New SSH key"
   - **Title**: `Claude Code Mac`
   - **Key**: 粘贴公钥内容
   - 点击 "Add SSH key"

### 步骤 3：在 GitHub 创建仓库

同方法 2 的步骤 2

### 步骤 4：使用 SSH 推送

```bash
cd /tmp/drawio-architecture-skill

# 添加远程仓库（使用 SSH）
git remote add origin git@github.com:moon09300731/drawio-architecture-skill.git

# 推送到 GitHub
git branch -M main
git push -u origin main
```

## 验证发布

推送成功后，访问：

```
https://github.com/moon09300731/drawio-architecture-skill
```

你应该看到：
- ✅ README.md
- ✅ SKILL.md
- ✅ LICENSE.txt
- ✅ install.sh
- ✅ .gitignore

## 后续步骤

### 1. 添加仓库描述和标签

访问仓库设置：
- https://github.com/moon09300731/drawio-architecture-skill/settings

**About** 部分：
- Description: `Draw.io architecture diagramming skill for Claude Code`
- Website: `https://docs.anthropic.com/claude-code`

**Topics**（标签）：
```
claude-code
drawio
architecture-diagram
diagram
skill
mcp
modelcontextprotocol
```

### 2. 添加示例图片

创建 `examples/` 目录并添加示例图：

```bash
mkdir -p examples
# 添加示例图片
git add examples/
git commit -m "Add example diagrams"
git push
```

### 3. 发布 Release

1. 访问：https://github.com/moon09300731/drawio-architecture-skill/releases
2. 点击 "Create a new release"
3. 设置：
   - **Tag version**: `v1.0.0`
   - **Release title**: `v1.0.0 - Initial Release`
   - **Description**:
     ```markdown
     ## Features
     - Professional architecture diagrams
     - Flowcharts and UML diagrams
     - Multiple export formats (.drawio, .png, .svg, .pdf)
     - Rich style guide with color schemes
     - Best practices and examples

     ## Installation
     ```bash
     curl -fsSL https://raw.githubusercontent.com/moon09300731/drawio-architecture-skill/main/install.sh | bash
     ```
     ```
4. 点击 "Publish release"

### 4. 添加徽章到 README

在 README.md 顶部添加：

```markdown
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Claude Code](https://img.shields.io/badge/Claude-Code-blue.svg)](https://claude.ai/code)
[![Version](https://img.shields.io/github/v/release/moon09300731/drawio-architecture-skill)](https://github.com/moon09300731/drawio-architecture-skill/releases)
```

## 分享技能

发布后，你可以：

1. **在社交媒体分享**：
   - Twitter: "我创建了一个 Claude Code 的 draw.io 架构图绘制技能！🎨 https://github.com/moon09300731/drawio-architecture-skill"
   - LinkedIn: 分享技术文章

2. **提交到技能市场**（如果有的话）：
   - 检查是否有官方的 Claude Code 技能仓库
   - 提交 Pull Request

3. **写博客文章**：
   - 介绍技能的功能和使用方法
   - 分享创建经验

## 安全提醒

⚠️ **重要**：
- 不要在任何地方公开分享你的 Personal Access Token
- 定期轮换你的 token
- 使用 SSH 密钥代替 PAT（更安全）
- 如果 token 泄露，立即撤销：https://github.com/settings/tokens

## 需要帮助？

- GitHub 文档: https://docs.github.com/
- Git 文档: https://git-scm.com/doc
- Claude Code 文档: https://docs.anthropic.com/claude-code

---

**祝发布顺利！** 🚀
