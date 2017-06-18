local shardTemplate = import "../shard.jsonnet.TEMPLATE";

shardTemplate + {
  customerName:: "conviva",
  featureTier:: "standard",
  release:: "2.42-rc1",
}
