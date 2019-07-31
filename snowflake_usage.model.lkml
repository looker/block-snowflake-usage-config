# include all the views
include: "*.view"

datagroup: snowflake_usage_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

named_value_format: conditional_to_millions {
  value_format: "[>=1000000]0,,\"M\";[>=1000]0,\"K\";0"
}

persist_with: snowflake_usage_default_datagroup


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
