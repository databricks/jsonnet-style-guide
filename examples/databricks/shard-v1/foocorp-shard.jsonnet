local shardTemplate = import "shard.jsonnet.TEMPLATE";

shardTemplate + {
  customerName:: "foocorp",
  release:: "2.42-rc1",
}
