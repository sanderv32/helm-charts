# mosquitto

![Version: 1.1.1](https://img.shields.io/badge/Version-1.1.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.6.12](https://img.shields.io/badge/AppVersion-1.6.12-informational?style=flat-square)

A Helm chart packaging Mosquitto

**Homepage:** <https://github.com/sanderv32/helm-charts/tree/master/charts/mosquitto>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| sanderv32 | <sanderv32@gmail.com> |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"eclipse-mosquitto"` |  |
| imagePullSecrets | list | `[]` |  |
| mosquitto.acls | string | `""` |  |
| mosquitto.anonymous | bool | `false` |  |
| mosquitto.config | string | `""` |  |
| mosquitto.persistence.accessModes[0] | string | `"ReadWriteOnce"` |  |
| mosquitto.persistence.enabled | bool | `false` |  |
| mosquitto.persistence.matchExpressions | object | `{}` |  |
| mosquitto.persistence.matchLabels | object | `{}` |  |
| mosquitto.persistence.path | string | `"/mosquitto/data/"` |  |
| mosquitto.persistence.size | string | `"1Gi"` |  |
| mosquitto.persistence.subPath | string | `""` |  |
| mosquitto.ssl.certificate.dnsNames | list | `[]` |  |
| mosquitto.ssl.certificate.enabled | bool | `false` |  |
| mosquitto.ssl.certificate.issuerRef.group | string | `"cert-manager.io"` |  |
| mosquitto.ssl.certificate.issuerRef.kind | string | `"ClusterIssuer"` |  |
| mosquitto.ssl.certificate.issuerRef.name | string | `"letsencrypt"` |  |
| mosquitto.ssl.enabled | bool | `false` |  |
| mosquitto.ssl.portName | string | `"mqttssl"` |  |
| mosquitto.ssl.secretName | string | `"mosquitto-ssl"` |  |
| mosquitto.users | string | `""` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.ports.mqtt | int | `1883` |  |
| service.ports.mqttssl | int | `8883` |  |
| service.ports.mqttws | int | `9001` |  |
| service.type | string | `"ClusterIP"` |  |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.13.1](https://github.com/norwoodj/helm-docs/releases/v1.13.1)