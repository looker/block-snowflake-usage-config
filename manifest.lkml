project_name: "block-snowflake-usage-config"

constant: CONNECTION_NAME {
  value: "block-snowflake-usage"
}

# Will eventually need to be a remote dependency
local_dependency: {
  project: "block-snowflake-usage"
}
