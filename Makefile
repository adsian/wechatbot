build:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o wechatbot main.go
	docker build -t rogergao/wechatbot:${v} .
	docker push rogergao/wechatbot:${v}
	rm -rf myapp