# connection: "@{CONNECTION_NAME}"

# # include all the views
include: "*.view"

# # include all the dashboards
# include: "//block-snowflake-usage/*.dashboard.lookml"
# include: "//block-snowflake-usage/*.view"
# include: "//block-snowflake-usage/*.explore"

explore: login_history_config {
  extends: [login_history_core]
  extension: required
}

explore: query_history_config {
  extends: [query_history_core]
  extension: required
}

explore: load_history_config {
  extends: [load_history_core]
  extension: required
}

explore: storage_usage_config {
  extends: [storage_usage_core]
  extension: required
}

explore: warehouse_metering_history_config {
  extends: [warehouse_metering_history_core]
  extension: required
}
