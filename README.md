# custom-grafana 映像檔

- 已安裝 tzdata 套件，帶入環境變數 `TZ=Asia/Taipei` 可修正時區。
- `8.3.1` 可以使用 1024 以下 port
- `9.5.14`, `10.2.2` 請使用 3000 port

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
              value: "3000"
```

應用程式的 port，指定為3000

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
        - containerPort: 3000
        ...
```
