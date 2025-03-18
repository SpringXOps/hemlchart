{{/* Generate chart name */}}
{{- define "spring-app.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* Generate fully qualified app name */}}
{{- define "spring-app.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "spring-app.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* Common labels */}}
{{- define "spring-app.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/name: {{ include "spring-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: Helm
{{- end -}}