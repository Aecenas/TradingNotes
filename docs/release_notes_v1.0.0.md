# TradingNotes v1.0.0 Draft Release Notes

## Highlights
- 首个可用版本：支持 Trade-Leg-Event 结构化交易记录与复盘闭环。
- 支持本地加密存储（SQLCipher）与 Event 图片附件。
- 支持基础统计页和交易列表筛选。

## New Features
- 交易列表：搜索、市场/状态/策略/时间筛选。
- Trade 管理：新建、编辑、详情、结束交易、归档/反归档。
- Leg 管理：新增、编辑、删除（带事件关联约束）。
- Event 管理：Trade/Leg 双作用域、动态字段、图片附件、编辑删除。
- 复盘模型：执行评分、结果评分、计划执行度、复盘标签与自由文本。
- 统计页：总数、已结束、盈亏笔数、市场与策略分布、复盘标签频次。

## Technical
- Flutter 单代码库（iOS/Android）。
- 数据层：Drift + SQLCipher（本地加密 SQLite）。
- 状态与路由：Riverpod + go_router。
- CI：flutter analyze + flutter test。
