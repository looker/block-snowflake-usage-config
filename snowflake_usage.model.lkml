connection: "@{CONNECTION_NAME}"

# # include all the views
include: "*.view"

# # include all the dashboards
include: "//block-snowflake-usage/*.dashboard.lookml"
include: "//block-snowflake-usage/*.view"
include: "//block-snowflake-usage/*.explore"

datagroup: snowflake_usage_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

named_value_format: conditional_to_millions {
  value_format: "[>=1000000]0,,\"M\";[>=1000]0,\"K\";0"
}

persist_with: snowflake_usage_default_datagroup

explore: login_history {
  extends: [login_history_core]
}

explore: query_history {
  extends: [query_history_core]
}

explore: load_history {
  extends: [load_history_core]
}

explore: storage_usage {
  extends: [storage_usage_core]
}

explore: warehouse_metering_history {
  extends: [warehouse_metering_history_core]
}
