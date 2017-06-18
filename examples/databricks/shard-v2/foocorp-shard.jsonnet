local shardTemplate = import "prod-shard.jsonnet.TEMPLATE";

shardTemplate.newProdShard("foocorp", "2.42-rc1")
