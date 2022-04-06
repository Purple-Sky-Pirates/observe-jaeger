GATEWAY_URL=$( \
  oc get route istio-ingressgateway -n istio-system \
 -o template --template '{{ "http://" }}{{ .spec.host }}')

curl ${GATEWAY_URL}/trace

JAEGER_URL=$( \
  oc get route jaeger -n istio-system \
 -o template --template '{{ "https://" }}{{ .spec.host }}')