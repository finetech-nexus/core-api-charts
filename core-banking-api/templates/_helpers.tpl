{{- define "core-banking.name" -}}
core-banking
{{- end }}

{{- define "core-banking.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end -}}

{{- define "core-banking.labels" -}}
app.kubernetes.io/name: {{ include "core-banking.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

