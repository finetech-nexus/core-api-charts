{{- define "kyc-api.name" -}}
kyc-api
{{- end -}}

{{- define "kyc-api.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end -}}

{{- define "kyc-api.labels" -}}
app.kubernetes.io/name: {{ include "kyc-api.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

