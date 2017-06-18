local serviceDeployment = import "../service-deployment.jsonnet.TEMPLATE";

// The webapp deployment for foocorp.
serviceDeployment + {
  serviceName:: "foocorp-webapp",
  dockerImage:: "webapp:2.42-rc1",
  serviceConf:: {
    customerName: "foocorp",
    database: "user-db.databricks.us-west-2.rds.amazonaws.com",
    managerAddress: "foocorp-manager.prod.svc.cluster.local",
  },
}
