{{- define "produit-app.name" -}}
produit-app
{{- end -}}

{{- define "produit-app.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end -}}

{{- define "produit-app.labels" -}}
app.kubernetes.io/name: {{ include "produit-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
