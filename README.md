# Draw.io Architecture Skill

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Claude Code](https://img.shields.io/badge/Claude-Code-blue.svg)](https://claude.ai/code)

一个专业的架构图绘制技能，用于 Claude Code。使用 draw.io MCP 工具创建高质量的架构图、流程图和系统设计图。

## 功能特性

✨ **专业级架构图**
- 项目架构图
- 系统设计图
- 数据流程图
- UML 图（类图、时序图、状态图）
- 网络拓扑图
- 部署架构图

🎨 **丰富的样式支持**
- 7 种预定义配色方案
- 多种节点形状（矩形、圆形、菱形、文件夹等）
- 自定义箭头和连线样式
- 泳道和分组容器

📦 **多格式导出**
- `.drawio` - 可编辑的源文件
- `.png` - 图片格式
- `.svg` - 矢量图格式
- `.pdf` - 文档格式

## 安装

### 方式 1: 手动安装

```bash
# 1. 克隆仓库
git clone https://github.com/yourusername/drawio-architecture-skill.git
cd drawio-architecture-skill

# 2. 复制到 Claude 技能目录
cp -r drawio-architecture ~/.claude/skills/

# 3. 验证安装
ls -la ~/.claude/skills/drawio-architecture/
```

### 方式 2: 一键安装

```bash
# 使用 curl 下载并安装
curl -fsSL https://raw.githubusercontent.com/yourusername/drawio-architecture-skill/main/install.sh | bash
```

## 依赖

此技能需要以下 MCP 服务器：

- **draw.io MCP Server**: 用于创建和编辑 draw.io 图表

安装 draw.io MCP Server：

```bash
# 使用 npx 安装
npx @modelcontextprotocol/server-drawio

# 或使用 npm 全局安装
npm install -g @modelcontextprotocol/server-drawio
```

## 使用方法

### 基本用法

在 Claude Code 中，直接使用自然语言描述需求：

```
"画一个项目架构图，展示数据准备、模型训练、推理服务的流程"
```

```
"绘制系统设计图，展示各个模块之间的关系"
```

```
"创建数据流程图，展示从用户请求到返回结果的过程"
```

### 高级用法

#### 创建架构图

```
"创建一个微服务架构图，包含：
- API 网关
- 用户服务
- 订单服务
- 支付服务
- 数据库
使用蓝色表示服务层，绿色表示数据层"
```

#### 创建 UML 类图

```
"绘制一个 UML 类图，展示用户、订单、产品三个类及其关系"
```

#### 创建时序图

```
"画一个时序图，展示用户登录的完整流程"
```

## 文件输出

生成的图表默认保存在：

```
docs/diagrams/
├── architecture/
├── uml/
└── deployment/
```

### 导出格式

| 格式 | 扩展名 | 用途 | 可编辑 |
|------|--------|------|--------|
| Draw.io 源文件 | `.drawio` | 默认格式，推荐 | ✅ |
| PNG 图片 | `.png` | 文档插入 | ❌ |
| SVG 矢量图 | `.svg` | 网页使用 | ⚠️ |
| PDF 文档 | `.pdf` | 打印归档 | ❌ |

## 技能内容

### 完整工作流程

1. **启动 draw.io 会话** - 创建浏览器预览
2. **创建图表** - 使用 XML 结构定义节点和边
3. **导出文件** - 保存为多种格式
4. **查看编辑** - 在浏览器或 draw.io 应用中打开

### 样式指南

#### 推荐配色

| 用途 | 填充颜色 | 边框颜色 |
|------|----------|----------|
| 数据层 | `#E3F2FD` | `#1976D2` |
| 模型层 | `#E8F5E9` | `#388E3C` |
| 推理层 | `#FFF3E0` | `#E65100` |
| 用户层 | `#FCE4EC` | `#C2185B` |
| 外部系统 | `#F3E5F5` | `#7B1FA2` |

#### 节点形状

- **圆角矩形**: 流程节点、组件
- **直角矩形**: 数据存储、容器
- **平行四边形**: 输入/输出
- **圆形**: 起始/结束点
- **圆柱体**: 数据库
- **文件夹**: 目录结构

### 布局原则

- **从上到下**: 层次结构
- **从左到右**: 时间序列
- **泳道分组**: 相关组件
- **对齐元素**: 保持整齐

## 示例

### 项目架构图

```
输入: "创建项目架构图"

输出:
docs/diagrams/architecture/project_architecture.drawio
```

包含：
- 数据层（源数据、数据处理）
- 模型层（训练、微调）
- 推理层（服务、API）
- 用户接口（CLI、Web）

### 数据流程图

```
输入: "绘制数据流程图"

输出:
docs/diagrams/data_flow.drawio
```

包含：
- 数据输入
- 处理步骤
- 决策节点
- 输出结果

## 最佳实践

### 1. 一致性

- 同一层级使用相同样式
- 同一类型使用相同颜色
- 保持箭头样式统一

### 2. 简洁性

- 避免过度拥挤
- 每个节点只显示关键信息
- 使用注释说明复杂逻辑

### 3. 可读性

- 字体大小适中（12-16px）
- 文本与边框保持间距
- 使用高对比度颜色

### 4. 版本控制

- 优先导出 `.drawio` 格式
- 使用 Git 追踪变更
- 导出图片用于文档

## 故障排除

### 图表显示不正确

1. 检查 XML 结构是否正确
2. 确认所有 `mxCell` 都有 `parent="1"`
3. 验证坐标是否在合理范围内（0-800）
4. 检查节点 ID 是否唯一

### 导出失败

1. 确保浏览器标签页已打开
2. 等待图表完全加载
3. 检查文件路径是否正确
4. 尝试重新获取图表

## 相关资源

- [draw.io 官方文档](https://www.diagrams.net/doc)
- [mxGraph API 文档](https://jgraph.github.io/mxgraph/)
- [Claude Code 文档](https://docs.anthropic.com/claude-code)
- [MCP 协议文档](https://modelcontextprotocol.io/)

## 贡献

欢迎贡献！请遵循以下步骤：

1. Fork 本仓库
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 开启 Pull Request

## 许可证

本项目采用 MIT 许可证 - 详见 [LICENSE.txt](LICENSE.txt) 文件

## 作者

创建于 2026-02-11

## 致谢

- [draw.io](https://www.diagrams.net/) - 强大的在线图表工具
- [Model Context Protocol](https://modelcontextprotocol.io/) - 连接 AI 和工具的协议
- [Claude Code](https://claude.ai/code) - AI 驱动的代码编辑器

---

**享受绘制专业架构图的乐趣！** 🎨
