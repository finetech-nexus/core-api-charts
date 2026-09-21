{{- define "card-management-api.name" -}}
card-management-api
{{- end -}}

{{- define "card-management-api.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end -}}

{{- define "card-management-api.labels" -}}
app.kubernetes.io/name: {{ include "card-management-api.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
