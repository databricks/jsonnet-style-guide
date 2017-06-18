local shardTemplate = import "../shard.jsonnet.TEMPLATE";

shardTemplate + {
  // Reach into common conf and rewrite the db to point to dev
  commonConf:: super.commonConf + {
    database: "user-dev-db.databricks.us-west-2.rds.amazonaws.com",
  },

  customerName:: "dev-test",
  release:: "bleeding-edge",
}
