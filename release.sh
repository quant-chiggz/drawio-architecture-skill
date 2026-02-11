#!/bin/bash

# 快速发布脚本 - Draw.io Architecture Skill

set -e

echo "================================"
echo "发布到 GitHub"
echo "================================"
echo ""

# 仓库信息
USERNAME="moon09300731"
REPO_NAME="drawio-architecture-skill"
EMAIL="lxyfyj131004@gmail.com"

# 配置 Git
echo "配置 Git..."
git config user.name "$USERNAME"
git config user.email "$EMAIL"

echo ""
echo "选择发布方式："
echo ""
echo "🔐 方式 1: HTTPS + Personal Access Token (推荐)"
echo "   - 需要在 GitHub 创建 token"
echo "   - 一次性设置，简单快捷"
echo ""
echo "🔑 方式 2: SSH (最安全)"
echo "   - 需要生成 SSH 密钥"
echo "   - 长期使用更方便"
echo ""
echo "📝 方式 3: 手动创建仓库"
echo "   - 在 GitHub 网站操作"
echo ""
read -p "请选择 [1/2/3]: " choice

case $choice in
    1)
        echo ""
        echo "================================"
        echo "方式 1: HTTPS + Token"
        echo "================================"
        echo ""
        echo "步骤 1: 创建 Personal Access Token"
        echo "  1. 访问: https://github.com/settings/tokens"
        echo "  2. 点击 'Generate new token (classic)'"
        echo "  3. 勾选 'repo' 权限"
        echo "  4. 点击 'Generate token'"
        echo "  5. 复制 token（只显示一次）"
        echo ""
        read -p "按 Enter 继续..."
        echo ""
        echo "步骤 2: 在 GitHub 创建仓库"
        echo "  1. 访问: https://github.com/new"
        echo "  2. 仓库名: $REPO_NAME"
        echo "  3. 设置为 Public"
        echo "  4. 不要初始化 README"
        echo ""
        read -p "创建完成后按 Enter 继续..."
        echo ""
        echo "步骤 3: 添加远程仓库并推送"
        git remote add origin "https://github.com/$USERNAME/$REPO_NAME.git" 2>/dev/null || true
        git branch -M main
        echo ""
        echo "正在推送到 GitHub..."
        echo "当提示输入密码时，请粘贴你的 Personal Access Token"
        echo "（不是 GitHub 密码）"
        echo ""
        git push -u origin main
        echo ""
        echo "✅ 发布成功！"
        echo "仓库地址: https://github.com/$USERNAME/$REPO_NAME"
        ;;
    2)
        echo ""
        echo "================================"
        echo "方式 2: SSH"
        echo "================================"
        echo ""
        echo "步骤 1: 生成 SSH 密钥"
        echo "  ssh-keygen -t ed25519 -C '$EMAIL'"
        echo "  eval \"\$(ssh-agent -s)\""
        echo "  ssh-add ~/.ssh/id_ed25519"
        echo ""
        echo "步骤 2: 添加公钥到 GitHub"
        echo "  1. 复制公钥: cat ~/.ssh/id_ed25519.pub"
        echo "  2. 访问: https://github.com/settings/keys"
        echo "  3. 点击 'New SSH key'"
        echo "  4. 粘贴公钥内容"
        echo ""
        echo "步骤 3: 在 GitHub 创建仓库（同方式 1）"
        echo ""
        read -p "准备好后按 Enter 继续..."
        echo ""
        echo "添加远程仓库并推送..."
        git remote add origin "git@github.com:$USERNAME/$REPO_NAME.git" 2>/dev/null || true
        git branch -M main
        echo ""
        echo "正在推送到 GitHub..."
        git push -u origin main
        echo ""
        echo "✅ 发布成功！"
        echo "仓库地址: https://github.com/$USERNAME/$REPO_NAME"
        ;;
    3)
        echo ""
        echo "================================"
        echo "方式 3: 手动创建"
        echo "================================"
        echo ""
        echo "步骤 1: 在 GitHub 创建仓库"
        echo "  访问: https://github.com/new"
        echo "  仓库名: $REPO_NAME"
        echo "  设置为 Public"
        echo "  不要初始化 README"
        echo ""
        echo "步骤 2: 在本地执行以下命令"
        echo ""
        echo "  # HTTPS 方式"
        echo "  git remote add origin https://github.com/$USERNAME/$REPO_NAME.git"
        echo "  git branch -M main"
        echo "  git push -u origin main"
        echo ""
        echo "  # 或 SSH 方式"
        echo "  git remote add origin git@github.com:$USERNAME/$REPO_NAME.git"
        echo "  git branch -M main"
        echo "  git push -u origin main"
        echo ""
        echo "详细说明请查看: PUBLISHING.md"
        ;;
    *)
        echo "❌ 无效选择"
        exit 1
        ;;
esac

echo ""
echo "================================"
echo "后续步骤"
echo "================================"
echo ""
echo "1. 访问仓库: https://github.com/$USERNAME/$REPO_NAME"
echo "2. 添加描述和标签"
echo "3. 发布 Release (v1.0.0)"
echo "4. 分享给你的朋友"
echo ""
echo "📚 详细指南: PUBLISHING.md"
echo ""
