apiVersion: apps/v1
kind: Deployment
metadata:
  name: {{ .Release.Name }}-nginx
{{ include "mychart.labels" . | indent 2 }}
spec:
  replicas: {{ .Values.replicaCount }}
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: {{ .Values.image.name }}:{{ .Values.image.version }}
        ports:
        - containerPort: 80