{{- define "demo-service.name" -}}
demo-service
{{- end -}}

{{- define "demo-service.fullname" -}}
{{- if .Release.Name -}}
{{ .Release.Name }}
{{- else -}}
{{ include "demo-service.name" . }}
{{- end -}}
{{- end -}}

{{- define "demo-service.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
{{- if .Values.serviceAccount.name -}}
{{ .Values.serviceAccount.name }}
{{- else -}}
{{ include "demo-service.fullname" . }}
{{- end -}}
{{- else -}}
default
{{- end -}}
{{- end -}}
