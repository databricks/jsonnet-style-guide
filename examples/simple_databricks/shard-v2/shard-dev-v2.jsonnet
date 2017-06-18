local shardTemplate = import "../shard-v2.jsonnet.TEMPLATE";

local devEnv = {
  database: "user-dev-db.databricks.us-west-2.rds.amazonaws.com",
};

shardTemplate.NewShard("test", "2.42-rc1", env=devEnv)
