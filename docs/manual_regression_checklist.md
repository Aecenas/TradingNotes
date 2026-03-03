# TradingNotes v1 手工回归清单

## 核心流程
- [ ] 新建 Trade（必填校验生效）
- [ ] 编辑 Trade 并回显历史字段
- [ ] Trade 列表搜索 + 市场/状态/策略/时间筛选可组合
- [ ] Trade 详情页能看到背景、Leg、时间线、复盘区

## Leg 流程
- [ ] 新建 Leg（绑定 tradeId）
- [ ] 编辑 Leg
- [ ] 无 Event 关联时可删除 Leg
- [ ] 有 Event 关联时删除 Leg 被阻断并提示

## Event 流程
- [ ] 新建 Trade 级 Event
- [ ] 新建 Leg 级 Event（必须选 Leg）
- [ ] Event 动态字段按 event_type 切换
- [ ] Event 要求“备注 + 至少一个结构化字段”
- [ ] 编辑 Event 并正确更新时间线
- [ ] 删除 Event 后时间线和附件一致更新

## 结束与归档
- [ ] 结束交易写入 end_time 与复盘字段
- [ ] 状态流转 Active -> Closed 成功
- [ ] 归档与取消归档可切换
- [ ] Archived 默认可通过筛选控制显示

## 附件与持久化
- [ ] Event 可添加本地图片
- [ ] 删除附件后 DB 元数据与物理文件一致
- [ ] 重启应用后 Trade/Leg/Event/附件均保留

## 统计页
- [ ] 总交易数/已结束/盈亏笔数统计正确
- [ ] 市场分布统计正确
- [ ] 策略分布统计正确
- [ ] 复盘标签频次统计正确
