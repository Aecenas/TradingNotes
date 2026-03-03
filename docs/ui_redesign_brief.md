# TradingNotes UI Redesign Brief

## 1. 用途
这份文档用于喂给专业 UI 设计 AI（或设计师）出高保真设计稿，目标是直接指导本项目 Flutter 界面重做。

## 2. 项目背景
- 产品：TradingNotes（交易复盘记录 App）
- 平台：iOS + Android（Flutter 单代码库）
- 核心定位：不是记流水账，而是让用户完成“计划 -> 执行 -> 结果 -> 复盘”的闭环
- 当前痛点：信息密集但层级不清、视觉缺乏一致性、效率型场景不够专业

## 3. 目标用户
- 主动交易者（Crypto / 股票 / ETF / 期货 / 外汇 / 配对）
- 重视长期样本积累、策略优化、执行复盘的人
- 需要快速录入、快速回看、快速对比

## 4. 业务边界（MVP）
### 要做
- 本地存储
- 手动录入
- 交易时间线展示
- 基础筛选与统计
- 图片附件（本地）

### 不做
- 券商/交易所自动同步
- 实时行情接入
- 复杂期权 Greeks 自动计算
- 云同步/协作

## 5. 信息架构（必须保留）
- Trade：一笔交易主题/战役（复盘与统计主单位）
- Leg：Trade 下的持仓腿（支持多腿/配对/分批）
- Event：交易过程事件（Trade 级与 Leg 级）

## 6. 页面与路由清单（必须覆盖）
- `/trades`：交易列表页（筛选 + 列表 + 快速状态扫描）
- `/trades/new`、`/trades/:id/edit`：交易表单
- `/trades/:id`：交易详情页（摘要、背景、Leg、事件时间线、复盘）
- `/legs/new?tradeId=...`、`/legs/:id/edit`：Leg 表单
- `/events/new?...`、`/events/:id/edit`：Event 表单（含动态字段与图片）
- `/trades/:id/close`：结束交易 + 结构化复盘
- `/trades/:id/review`：复盘草稿
- `/stats`：统计页
- `/settings`：设置页

## 7. 关键字段（设计时要预留）
### Trade
- title, market, strategy_type, structure_type
- entry_reason, thesis, expectation, invalidation_condition
- tags, status(draft/active/closed/archived)
- start_time, end_time, summary_pnl
- review_text, review_score_execution, review_score_result, review_plan_followed, review_error_tags

### Leg
- symbol, name, direction(long/short), instrument_type
- leverage, account, currency
- initial_plan_entry_price, initial_stop_loss, initial_risk_budget, initial_atr
- note, sort_order

### Event
- scope_type(trade/leg), event_type, event_time, title, note
- 动态数字字段：price/quantity/notional/risk_delta/stop/target/pnl/atr 等
- attachments（图片列表）

## 8. 设计目标与风格方向
- 关键词：专业、冷静、高信息密度、可扫描、无花哨装饰
- 风格建议：现代金融工作台（不是营销页风格）
- 视觉要求：
  - 明确信息层级（标题区、摘要区、数据区、操作区）
  - 强化状态色与盈亏色（但保持克制）
  - 卡片与分组清晰，避免“长表单一坨”
  - 列表可快速扫读，关键数据一眼可见

## 9. 交互与可用性约束
- 触控目标 >= 44px
- 可点击元素间距 >= 8px
- 表单优先移动端键盘适配（数字字段优先数值键盘）
- 关键操作需要明确主次（Primary / Secondary / Destructive）
- 深色/浅色先做浅色，保留可扩展到深色的 token 体系
- 无障碍：
  - 对比度 >= 4.5:1
  - 焦点态可见
  - 文本层级连续

## 10. 技术落地约束（Flutter）
- 基于 Material 3 + 自定义 Theme token 落地
- 避免依赖复杂自绘图形；优先可组件化结构
- 设计稿需给出：
  - 间距规则（4/8/12/16/24）
  - 字体层级
  - 颜色 token（primary/surface/text/success/error/warning）
  - 组件状态（default/pressed/disabled/focus）

## 11. 交付物要求（给 UI AI）
- 必须输出：
  - 设计系统（颜色、字体、圆角、阴影、间距、组件）
  - 全量页面高保真稿（含空状态、加载态、错误态）
  - 关键交互说明（筛选、保存、删除、状态切换）
  - 开发标注（尺寸、间距、颜色、字号）
- 推荐输出格式：
  - Figma 页面结构：`Foundations`、`Components`、`Screens`
  - 每个页面包含 Mobile（375 宽）基准稿

## 12. 可直接复制给设计 AI 的 Prompt
```text
你是资深移动端产品 UI 设计师。请为“TradingNotes 交易复盘 App”做一套可直接开发落地的高保真 UI 方案。

产品目标：
1) 帮助主动交易者高效记录交易全过程
2) 支持 Trade-Leg-Event 三级结构
3) 强化复盘闭环（计划-执行-结果-复盘）
4) 重点是效率和可扫描性，不是花哨视觉

平台与技术：
- iOS + Android
- Flutter（Material 3，可定制 Theme）
- 需要可组件化、可工程落地

请输出：
1. Design System：
   - 颜色 token（含状态色、盈亏色）
   - 字体层级（标题/正文/辅助）
   - 间距与圆角体系
   - 按钮、输入框、卡片、标签、列表项、弹窗等组件及状态
2. 页面高保真稿（移动端 375 宽）：
   - /trades（交易列表）
   - /trades/new 与 /trades/:id/edit
   - /trades/:id（详情）
   - /legs/new, /legs/:id/edit
   - /events/new, /events/:id/edit
   - /trades/:id/close
   - /trades/:id/review
   - /stats
   - /settings
3. 每页至少提供：
   - 正常态
   - 空状态
   - 加载态
   - 错误态
4. 给出关键交互说明：
   - 筛选、保存、删除确认、状态切换、附件管理
5. 给出开发标注：
   - 颜色值、字号、间距、组件高度、触控区域

设计约束：
- 信息密度高但层级清晰
- 对比度 >= 4.5:1，焦点态可见
- 触控目标 >= 44px，控件间距 >= 8px
- 保持专业、克制、现代金融工具感
- 不要做成营销落地页风格

业务模型与字段范围：
- Trade：title/market/strategy/structure/status/start/end/pnl/review
- Leg：symbol/direction/instrument/leverage/entry/stop/risk/note
- Event：scope/event_type/time/note + 动态数值字段 + 图片附件
```
