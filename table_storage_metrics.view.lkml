include: "//block-snowflake-usage/table_storage_metrics_core.view.lkml"

view: table_storage_metrics {
  extends: [table_storage_metrics_core]
}