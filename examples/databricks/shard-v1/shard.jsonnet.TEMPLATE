local serviceDeployment = import "../service-deployment.jsonnet.TEMPLATE";

{
  // Required arguments
  customerName:: error "customerName must be defined",
  release:: error "release must be defined",

  // Optional arguments
  commonConf:: {
    customerName: $.customerName,
    database: "user-db.databricks.us-west-2.rds.amazonaws.com",
  },

  local webapp = serviceDeployment + {
    serviceName:: $.customerName + "-webapp",
    dockerImage:: "webapp:" + $.release,
    serviceConf:: $.commonConf + {
      managerAddress: $.customerName + "-manager.prod.svc.cluster.local",
    },
  },

  local manager = serviceDeployment + {
    serviceName:: $.customerName + "-manager",
    dockerImage:: "manager:" + $.release,
    serviceConf:: $.commonConf,
  },

  apiVersion: "v1",
  kind: "List",
  items: std.flattenArrays([webapp.items, manager.items]),
}
