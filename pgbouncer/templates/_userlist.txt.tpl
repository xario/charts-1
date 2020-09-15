{{ define "userlist.txt.1.0.0" }}
{{- range $k, $v := .Values.users }}
{{ $k | quote }} {{ $v | quote }}
{{- end }}
{{- if .Values.prometheusExporter.enabled }}
"stats" "stats"
{{- end }}
{{- end }}
