#!/bin/bash

# Draw.io Architecture Skill 安装脚本
# 用于 Claude Code

set -e

echo "================================"
echo "Draw.io Architecture Skill 安装"
echo "================================"
echo ""

# 颜色定义
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 检查 Claude 技能目录
CLAUDE_SKILLS_DIR="$HOME/.claude/skills"
if [ ! -d "$CLAUDE_SKILLS_DIR" ]; then
    echo -e "${YELLOW}未找到 Claude 技能目录，正在创建...${NC}"
    mkdir -p "$CLAUDE_SKILLS_DIR"
fi

# 复制技能文件
echo -e "${BLUE}正在安装 drawio-architecture 技能...${NC}"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -d "$SCRIPT_DIR/drawio-architecture" ]; then
    cp -r "$SCRIPT_DIR/drawio-architecture" "$CLAUDE_SKILLS_DIR/"
    echo -e "${GREEN}✓ 技能文件已复制到 $CLAUDE_SKILLS_DIR/drawio-architecture${NC}"
else
    echo -e "${YELLOW}从当前目录安装...${NC}"
    mkdir -p "$CLAUDE_SKILLS_DIR/drawio-architecture"
    cp -r "$SCRIPT_DIR"/* "$CLAUDE_SKILLS_DIR/drawio-architecture/" 2>/dev/null || true
fi

# 验证安装
if [ -f "$CLAUDE_SKILLS_DIR/drawio-architecture/SKILL.md" ]; then
    echo -e "${GREEN}✓ 技能安装成功！${NC}"
    echo ""
    echo "技能文件:"
    ls -lh "$CLAUDE_SKILLS_DIR/drawio-architecture/"
    echo ""
    echo -e "${BLUE}================================"
    echo "安装完成！"
    echo "================================${NC}"
    echo ""
    echo "使用方法:"
    echo "  在 Claude Code 中说："
    echo "  \"画一个项目架构图\""
    echo "  \"创建数据流程图\""
    echo "  \"绘制系统设计图\""
    echo ""
else
    echo -e "${YELLOW}⚠ 安装可能失败，请检查文件${NC}"
    exit 1
fi

# 检查 MCP 服务器
echo ""
echo -e "${BLUE}检查依赖...${NC}"

# 检查 draw.io MCP 服务器
if command -v npx &> /dev/null; then
    echo -e "${GREEN}✓ npx 已安装${NC}"
    echo ""
    echo "安装 draw.io MCP 服务器（可选）:"
    echo "  npx @modelcontextprotocol/server-drawio"
elif command -v npm &> /dev/null; then
    echo -e "${YELLOW}⚠ 未找到 npx，但 npm 已安装${NC}"
    echo "  可以安装: npm install -g npx"
else
    echo -e "${YELLOW}⚠ 未找到 Node.js/npm${NC}"
    echo "  draw.io MCP 服务器需要 Node.js 环境"
    echo "  下载: https://nodejs.org/"
fi

echo ""
echo -e "${GREEN}享受使用！${NC}"
