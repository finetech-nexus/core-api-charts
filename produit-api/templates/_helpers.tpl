{{- define "produit-api.name" -}}
produit-api
{{- end -}}

{{- define "produit-api.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end -}}

{{- define "produit-api.labels" -}}
app.kubernetes.io/name: {{ include "produit-api.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
