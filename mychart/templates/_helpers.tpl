{{/* Generate basic labels */}}
{{- define "mychart.labels" }}
labels:
  generator: helm
  date: {{ now | htmlDate }}
  app: nginx
{{- end }}
