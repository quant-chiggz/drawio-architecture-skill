#!/bin/bash

# Draw.io Architecture Skill 发布脚本

set -e

REPO_NAME="drawio-architecture-skill"
USERNAME="moon09300731"
GITHUB_EMAIL="lxyfyj131004@gmail.com"

echo "================================"
echo "发布到 GitHub"
echo "================================"
echo ""
echo "仓库: $USERNAME/$REPO_NAME"
echo ""

# 检查是否在正确的目录
if [ ! -f "SKILL.md" ]; then
    echo "❌ 错误：请在技能目录中运行此脚本"
    exit 1
fi

# 方式 1：使用 SSH（推荐）
echo "请选择认证方式："
echo "1) SSH（推荐，已配置 SSH 密钥）"
echo "2) HTTPS（需要 GitHub Personal Access Token）"
echo "3) 手动创建（在 GitHub 网站上创建）"
echo ""
read -p "选择 [1/2/3]: " choice

case $choice in
    1)
        echo ""
        echo "使用 SSH 推送到 GitHub..."
        git remote add origin "git@github.com:$USERNAME/$REPO_NAME.git" 2>/dev/null || true
        git branch -M main
        git push -u origin main
        echo ""
        echo "✓ 发布成功！"
        echo "仓库地址: https://github.com/$USERNAME/$REPO_NAME"
        ;;
    2)
        echo ""
        echo "⚠️  使用 HTTPS 需要认证"
        echo ""
        echo "请先在 GitHub 创建仓库："
        echo "1. 访问: https://github.com/new"
        echo "2. 仓库名: $REPO_NAME"
        echo "3. 设置为 Public"
        echo "4. 不要初始化 README"
        echo ""
        read -p "创建完成后按 Enter 继续..."
        echo ""
        echo "添加远程仓库..."
        git remote add origin "https://github.com/$USERNAME/$REPO_NAME.git" 2>/dev/null || true
        git branch -M main
        echo ""
        echo "现在推送到 GitHub..."
        echo "如果提示输入密码，请使用 GitHub Personal Access Token"
        echo "（不是你的 GitHub 密码）"
        echo ""
        git push -u origin main
        echo ""
        echo "✓ 发布成功！"
        echo "仓库地址: https://github.com/$USERNAME/$REPO_NAME"
        ;;
    3)
        echo ""
        echo "手动创建步骤："
        echo ""
        echo "1. 在 GitHub 创建仓库："
        echo "   访问: https://github.com/new"
        echo "   仓库名: $REPO_NAME"
        echo "   设置为 Public"
        echo "   不要初始化 README"
        echo ""
        echo "2. 在本地执行："
        echo "   git remote add origin https://github.com/$USERNAME/$REPO_NAME.git"
        echo "   git branch -M main"
        echo "   git push -u origin main"
        echo ""
        echo "3. 或者使用 SSH："
        echo "   git remote add origin git@github.com:$USERNAME/$REPO_NAME.git"
        echo "   git branch -M main"
        echo "   git push -u origin main"
        echo ""
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
echo "1. 添加仓库描述和标签"
echo "2. 在 README 中添加示例图片"
echo "3. 考虑添加 GitHub Actions"
echo "4. 发布 Release"
echo ""
echo "仓库地址: https://github.com/$USERNAME/$REPO_NAME"
echo ""
