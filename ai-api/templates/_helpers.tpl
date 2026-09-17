{{- define "ai-api.name" -}}
ai-api
{{- end -}}

{{- define "ai-api.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end -}}

{{- define "ai-api.labels" -}}
app.kubernetes.io/name: {{ include "ai-api.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
