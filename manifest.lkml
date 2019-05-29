project_name: "block-snowflake-usage-config"

# remote_dependency: block-snowflake-usage {
#   url: "git://github.com/looker/block-snowflake-usage.git"
#   ref: "87f25aca8ef326216388bfc9948d8c3c4109ab94"
# }

local_dependency: {
  project: "block-snowflake-usage"
}

constant: CONNECTION_NAME {
  value: "block-snowflake-usage"
}
