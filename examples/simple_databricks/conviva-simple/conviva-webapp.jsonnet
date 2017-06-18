local serviceDeployment = import "../service-deployment.jsonnet.TEMPLATE";

// The webapp deployment for conviva.
serviceDeployment + {
  serviceName:: "conviva-webapp",
  dockerImage:: "webapp:2.42-rc1",
  serviceConf:: {
    customerName: "conviva",
    featureTier: "standard",
    database: "user-db.databricks.us-west-2.rds.amazonaws.com",
    webappAddress: "conviva-webapp.prod.svc.cluster.local",
  },
}
