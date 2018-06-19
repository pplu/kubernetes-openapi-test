Got `v2.json` from a minikube (v1.10.0) http://127.0.0.1:8001/openapi/v2

More info: https://kubernetes.io/docs/concepts/overview/kubernetes-api/#openapi-and-swagger-definitions

test.pl is set to execute against a kubernetes API on localhost (with `kubectl proxy` for example). It
takes a while to execute because of what seems JSON validation and parsing by OpenAPI::Client.
