include: "//block-snowflake-usage/warehouse_metering_history_core.view.lkml"

view: warehouse_metering_history {
  extends: [warehouse_metering_history_core]
}