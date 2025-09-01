{{- define "self-service.name" -}}
self-service
{{- end }}

{{- define "self-service.fullname" -}}
{{ include "self-service.name" . }}
{{- end }}

{{- define "self-service.labels" -}}
app.kubernetes.io/name: {{ include "self-service.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}