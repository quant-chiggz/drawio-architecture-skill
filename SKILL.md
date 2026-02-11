---
name: drawio-architecture
description: Create professional architecture diagrams, flowcharts, and system diagrams using draw.io MCP tools. Use this skill when the user asks to create architecture diagrams, system designs, data flow diagrams, UML diagrams, or any visual technical documentation. Export diagrams as editable .drawio files that can be opened in browser or draw.io desktop app.
license: MIT
---

# Draw.io 架构图绘制技能

## 技能概述

使用 draw.io MCP 工具创建专业的架构图、流程图和系统设计图。支持实时预览、可编辑格式和多格式导出。

## 何时使用此技能

在以下情况下使用此技能：

- **架构图**: 项目架构、系统架构、应用架构
- **流程图**: 数据流程、业务流程、工作流程
- **UML 图**: 类图、时序图、状态图、组件图
- **网络拓扑**: 网络架构、服务拓扑、部署架构
- **数据模型**: ER 图、数据库设计、数据关系
- **时序图**: 请求流程、调用链、交互时序
- **状态机**: 状态转换、生命周期、决策流程

用户可能的表达方式：
- "画一个架构图"
- "绘制系统设计图"
- "创建数据流程图"
- "生成 UML 类图"
- "画一个网络拓扑图"

## 工作流程

### 步骤 1: 启动 draw.io 会话

```python
mcp__drawio__start_session()
```

**返回结果**:
- Session ID
- Browser URL (例如: `http://localhost:6002?mcp=...`)

### 步骤 2: 创建图表

使用 `mcp__drawio__create_new_diagram()` 创建新图表：

```python
mcp__drawio__create_new_diagram(xml="""
<mxGraphModel>
  <root>
    <mxCell id="0"/>
    <mxCell id="1" parent="0"/>

    <!-- 添加标题 -->
    <mxCell id="title" value="系统架构图" style="..." vertex="1" parent="1">
      <mxGeometry x="300" y="20" width="200" height="40" as="geometry"/>
    </mxCell>

    <!-- 添加节点 -->
    <mxCell id="node1" value="组件 A" style="rounded=1;fillColor=#E3F2FD;..." vertex="1" parent="1">
      <mxGeometry x="50" y="100" width="120" height="60" as="geometry"/>
    </mxCell>

    <!-- 添加边 -->
    <mxCell id="edge1" style="edgeStyle=orthogonalEdgeStyle;..." edge="1" parent="1" source="node1" target="node2">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
  </root>
</mxGraphModel>
""")
```

### 步骤 3: 导出文件

#### 导出为 draw.io 格式（推荐，可编辑）

```python
mcp__drawio__export_diagram(
    format="drawio",
    path="docs/diagram_name.drawio"
)
```

#### 导出为图片（可选）

```python
# PNG 格式
mcp__drawio__export_diagram(
    format="png",
    path="docs/diagram_name.png"
)

# SVG 格式
mcp__drawio__export_diagram(
    format="svg",
    path="docs/diagram_name.svg"
)
```

### 步骤 4: 用户查看

**浏览器查看**:
- 打开 Browser URL（实时预览）
- 可以直接在浏览器中编辑

**本地打开**:
```bash
open docs/diagram_name.drawio
```

## XML 结构规范

### 基本结构

```xml
<mxGraphModel>
  <root>
    <mxCell id="0"/>              <!-- 根节点 -->
    <mxCell id="1" parent="0"/>    <!-- 图层 -->
    <!-- 所有节点和边都放在这里 -->
  </root>
</mxGraphModel>
```

### 节点（Vertex）

```xml
<mxCell id="node1" value="节点文本" style="..." vertex="1" parent="1">
  <mxGeometry x="50" y="100" width="120" height="60" as="geometry"/>
</mxCell>
```

**位置参数**:
- `x`: X 坐标
- `y`: Y 坐标
- `width`: 宽度
- `height`: 高度

### 边（Edge）

```xml
<mxCell id="edge1" style="..." edge="1" parent="1" source="node1" target="node2">
  <mxGeometry relative="1" as="geometry"/>
</mxCell>
```

**连接参数**:
- `source`: 源节点 ID
- `target`: 目标节点 ID

### 泳道（Swimlane）

```xml
<mxCell id="lane1" value="泳道名称" style="swimlane;..." vertex="1" parent="1">
  <mxGeometry x="40" y="100" width="200" height="400" as="geometry"/>
</mxCell>
```

## 样式指南

### 颜色方案

#### 推荐配色

| 用途 | 填充颜色 | 边框颜色 |
|------|----------|----------|
| 数据层 | `#E3F2FD` | `#1976D2` |
| 模型层 | `#E8F5E9` | `#388E3C` |
| 推理层 | `#FFF3E0` | `#E65100` |
| 用户层 | `#FCE4EC` | `#C2185B` |
| 外部系统 | `#F3E5F5` | `#7B1FA2` |
| 数据库 | `#E1F5FE` | `#0277BD` |
| API/服务 | `#FFF9C4` | `#F57F17` |

#### 基础样式属性

```xml
<style>
  rounded=1;           # 圆角矩形
  whiteSpace=wrap;      # 文本换行
  html=1;               # HTML 格式
  fillColor=#E3F2FD;    # 填充颜色
  strokeColor=#1976D2;  # 边框颜色
  fontSize=14;          # 字体大小
  fontStyle=1;          # 字体样式（1=粗体）
  align=center;         # 对齐方式
  verticalAlign=middle; # 垂直对齐
</style>
```

### 边的样式

```xml
<style>
  edgeStyle=orthogonalEdgeStyle;  # 正交边（直角）
  rounded=0;                      # 圆角边
  strokeColor=#666666;            # 颜色
  strokeWidth=2;                  # 宽度
  endArrow=classic;               # 箭头样式
  dashed=0;                       # 虚线（1=虚线）
</style>
```

### 节点形状

```xml
<!-- 圆角矩形 -->
<style>rounded=1;whiteSpace=wrap;html=1;</style>

<!-- 直角矩形 -->
<style>rounded=0;whiteSpace=wrap;html=1;</style>

<!-- 文本节点 -->
<style>text;html=1;strokeColor=none;fillColor=none;</style>

<!-- 文件夹 -->
<style>shape=folder;whiteSpace=wrap;html=1;</style>

<!-- 圆形 -->
<style>shape=ellipse;whiteSpace=wrap;html=1;</style>

<!-- 圆柱体（数据库） -->
<style>shape=cylinder3;whiteSpace=wrap;html=1;</style>

<!-- 平行四边形 -->
<style>shape=parallelogram;whiteSpace=wrap;html=1;perimeter=parallelogramStyle;</style>

<!-- 注释 -->
<style>shape=note;whiteSpace=wrap;html=1;backgroundOutline=1;darkOpacity=0.05;</style>
```

## 布局原则

### 1. 分层布局

从上到下或从左到右展示层次结构：

```
┌─────────────┐
│   用户层    │
├─────────────┤
│   应用层    │
├─────────────┤
│   数据层    │
└─────────────┘
```

### 2. 泳道分组

使用泳道（swimlane）对相关组件分组：

```xml
<mxCell id="lane1" value="数据层" style="swimlane;..." vertex="1" parent="1">
  <mxGeometry x="40" y="100" width="200" height="400" as="geometry"/>
</mxCell>
```

### 3. 对齐和间距

- 保持同一行的元素 Y 坐标一致
- 保持同一列的元素 X 坐标一致
- 元素间距至少 40-50 像素
- 留出足够的边距（至少 40 像素）

### 4. 数据流向

- 使用箭头表示数据流向
- 从左到右：时间序列或处理流程
- 从上到下：层次结构或调用链

## 常见图表类型

### 1. 架构图

展示系统的整体架构和组件关系：

```xml
<!-- 使用泳道分层 -->
<mxCell id="data_layer" value="数据层" style="swimlane;..." vertex="1" parent="1">
  <mxGeometry x="40" y="100" width="200" height="400" as="geometry"/>
</mxCell>

<mxCell id="model_layer" value="模型层" style="swimlane;..." vertex="1" parent="1">
  <mxGeometry x="260" y="100" width="200" height="400" as="geometry"/>
</mxCell>

<!-- 使用箭头连接跨层组件 -->
<mxCell id="cross1" style="edgeStyle=orthogonalEdgeStyle;..." edge="1" parent="1"
        source="data_node" target="model_node">
  <mxGeometry relative="1" as="geometry"/>
</mxCell>
```

### 2. 流程图

展示业务流程或数据处理流程：

```xml
<!-- 使用平行四边形表示输入/输出 -->
<mxCell id="input" value="输入数据" style="shape=parallelogram;..." vertex="1" parent="1">
  <mxGeometry x="50" y="100" width="120" height="60" as="geometry"/>
</mxCell>

<!-- 使用圆角矩形表示处理步骤 -->
<mxCell id="process" value="处理" style="rounded=1;..." vertex="1" parent="1">
  <mxGeometry x="200" y="100" width="120" height="60" as="geometry"/>
</mxCell>

<!-- 使用菱形表示决策（需要自定义绘制） -->
```

### 3. 时序图

展示组件间的交互序列：

```
用户 → API 服务 → 业务逻辑 → 数据库
  ←         ←          ←        ←
```

### 4. UML 类图

展示类及其关系：

- 使用矩形表示类
- 使用实线箭头表示关联
- 使用虚线箭头表示依赖
- 使用三角形箭头表示继承

## 命名规范

### 文件命名

- 使用小写字母和下划线
- 描述性名称，表示图表类型和内容
- 示例：
  - `project_architecture.drawio`
  - `data_flow.drawio`
  - `training_process.drawio`
  - `api_sequence.drawio`

### 节点 ID 命名

使用描述性 ID，便于后续编辑：

```xml
<!-- 好 -->
<mxCell id="data_source" value="数据源" .../>
<mxCell id="api_gateway" value="API 网关" .../>

<!-- 避免 -->
<mxCell id="node1" value="数据源" .../>
<mxCell id="node2" value="API 网关" .../>
```

## 最佳实践

### 1. 一致性

- 同一层级的组件使用相同的样式
- 同一类型的组件使用相同的颜色
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

- 优先导出 `.drawio` 格式（可编辑）
- 导出图片用于文档
- 使用 Git 追踪变更

## 文件保存

### 推荐目录结构

```
project/
├── docs/
│   ├── diagrams/
│   │   ├── architecture/
│   │   │   ├── system_architecture.drawio
│   │   │   └── data_flow.drawio
│   │   ├── uml/
│   │   │   ├── class_diagram.drawio
│   │   │   └── sequence_diagram.drawio
│   │   └── deployment/
│   │       ├── network_topology.drawio
│   │       └── infrastructure.drawio
```

### 导出格式选择

| 格式 | 用途 | 可编辑 |
|------|------|--------|
| `.drawio` | 源文件，默认格式 | ✅ |
| `.png` | 文档插入，演示文稿 | ❌ |
| `.svg` | 网页使用，可缩放 | ⚠️ |
| `.pdf` | 打印，文档归档 | ❌ |

## 示例代码

### 简单架构图

```xml
<mxGraphModel>
  <root>
    <mxCell id="0"/>
    <mxCell id="1" parent="0"/>

    <!-- 标题 -->
    <mxCell id="title" value="系统架构图"
            style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;fontSize=20;fontStyle=1;"
            vertex="1" parent="1">
      <mxGeometry x="300" y="30" width="200" height="40" as="geometry"/>
    </mxCell>

    <!-- 数据层 -->
    <mxCell id="data_layer" value="数据层"
            style="swimlane;horizontal=0;whiteSpace=wrap;html=1;fillColor=#E3F2FD;strokeColor=#1976D2;startSize=30;"
            vertex="1" parent="1">
      <mxGeometry x="40" y="100" width="200" height="400" as="geometry"/>
    </mxCell>

    <!-- 模型层 -->
    <mxCell id="model_layer" value="模型层"
            style="swimlane;horizontal=0;whiteSpace=wrap;html=1;fillColor=#E8F5E9;strokeColor=#388E3C;startSize=30;"
            vertex="1" parent="1">
      <mxGeometry x="260" y="100" width="200" height="400" as="geometry"/>
    </mxCell>

    <!-- 应用层 -->
    <mxCell id="app_layer" value="应用层"
            style="swimlane;horizontal=0;whiteSpace=wrap;html=1;fillColor=#FFF3E0;strokeColor=#E65100;startSize=30;"
            vertex="1" parent="1">
      <mxGeometry x="480" y="100" width="200" height="400" as="geometry"/>
    </mxCell>
  </root>
</mxGraphModel>
```

## 调试技巧

### 如果图表显示不正确

1. 检查 XML 结构是否正确
2. 确认所有 `mxCell` 都有 `parent="1"`
3. 验证坐标是否在合理范围内（0-800）
4. 检查节点 ID 是否唯一

### 如果导出失败

1. 确保浏览器标签页已打开
2. 等待图表完全加载
3. 检查文件路径是否正确
4. 尝试重新获取图表：`mcp__drawio__get_diagram()`

## 相关工具

- **draw.io Desktop**: 本地应用程序，可离线使用
- **draw.io Web**: 在线版本，https://app.diagrams.net/
- **VS Code 插件**: Draw.io Integration

## 参考资源

- draw.io 官方文档: https://www.diagrams.net/doc
- mxGraph API 文档: https://jgraph.github.io/mxgraph/
- MCP Draw.io 文档: 项目内 DRAWIO_MCP_SETUP.md

---

**版本**: 1.0.0
**最后更新**: 2026-02-11
