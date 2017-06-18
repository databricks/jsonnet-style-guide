local shardTemplate = import "../shard.jsonnet.TEMPLATE";

shardTemplate + {
  customerName:: "conviva",
  release:: "2.42-rc1",
}
