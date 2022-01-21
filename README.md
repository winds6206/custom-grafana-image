# custom-grafana 映像檔

- 已安裝 tzdata 套件，帶入環境變數 `TZ=Asia/Taipei` 可修正時區。
- 修正原生 3000 port，調整為 80 port

## 使用方式

K8s YAML 增加環境變數

```
apiVersion: apps/v1
kind: Deployment
metadata:
...
spec:
  template:
    metadata:
      ...
    spec:
      restartPolicy: Always
      containers:
        ...
          env:
            - name: TZ
              value: Asia/Taipei
            - name: GF_SERVER_HTTP_PORT
              value: "80"
```

應用程式的 port，指定為80

```
apiVersion: apps/v1
kind: Deployment
metadata:
...
spec:
  template:
    metadata:
      ...
    spec:
      restartPolicy: Always
      containers:
      ...
        ports:
        - containerPort: 80
        ...
```
