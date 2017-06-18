local serviceDeployment = import "../service-deployment.jsonnet.TEMPLATE";

// The cluster manager deployment for foocorp.
serviceDeployment + {
  serviceName:: "foocorp-manager",
  dockerImage:: "manager:2.42-rc1",
  serviceConf:: {
    customerName: "foocorp",
    database: "user-db.databricks.us-west-2.rds.amazonaws.com",
  },
}
