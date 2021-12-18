---
apiVersion: v1
kind: ServiceAccount
metadata:
  name: vault-reviewer
  namespace: {{ component_name }}
---
apiVersion: v1
kind: Secret
metadata:
  name: vault-reviewer
  namespace: {{ component_name }}
  annotations:
    kubernetes.io/service-account.name: vault-reviewer
type: kubernetes.io/service-account-token
