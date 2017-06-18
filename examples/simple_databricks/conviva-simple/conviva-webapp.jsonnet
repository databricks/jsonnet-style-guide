local serviceDeployment = import "../service-deployment.jsonnet.TEMPLATE";

// The webapp deployment for conviva.
serviceDeployment + {
  serviceName:: "conviva-webapp",
  dockerImage:: "webapp:2.42-rc1",
  serviceConf:: {
    customerName: "conviva",
    database: "user-db.databricks.us-west-2.rds.amazonaws.com",
    managerAddress: "conviva-manager.prod.svc.cluster.local",
  },
}
