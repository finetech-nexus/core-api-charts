{{- define "invest-api.name" -}}
invest-api
{{- end -}}

{{- define "invest-api.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end -}}

{{- define "invest-api.labels" -}}
app.kubernetes.io/name: {{ include "invest-api.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
