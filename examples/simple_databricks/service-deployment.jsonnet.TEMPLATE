// Template for a Kubernetes (service, deployment) pair.
{
  // Required arguments for this template
  serviceName:: error "serviceName must be specified",
  dockerImage:: error "dockerImage must be specified",

  // Optional arguments for this template.
  serviceConf:: {},
  resources:: {
    requests: {
      memory: "250Mi",
      cpu: "500m",
    },
  },
  numReplicas:: 1,

  // Defines a Kubernetes deployment
  local service = {
    kind: "Service",
    metadata: {
      name: $.serviceName,
    },
    spec: {
      selector: {
        serviceName: $.serviceName,
      }
      // Some required fields omitted for brevity -- you can refer to
      // https://kubernetes.io/docs/concepts/services-networking/service/
      // for more information on defining services.
    }
  },

  // Defines a Kubernetes service
  local deployment = {
    kind: "Deployment",
    metadata: {
      name: $.serviceName,
    },
    spec: {
      replicas: $.numReplicas,
      template: {
        metadata: {
          labels: {
            name: $.serviceName,
          },
        },
        spec: {
          containers: [
            {
              name: "default",
              image: $.dockerImage,
              resources: $.resources,
              env: {
                name: "SERVICE_CONF",
                value: std.manifestJson($.serviceConf),
              },
              // Some fields omitted for brevity -- you can refer to
              // https://kubernetes.io/docs/concepts/workloads/controllers/deployment/
              // for more information on defining deployments.
            }
          ],
        },
      },
    }
  },

  // Wrap up both the service and deployment in a Kubernetes resource list.
  apiVersion: "v1",
  kind: "List",
  items: [service, deployment],
}
