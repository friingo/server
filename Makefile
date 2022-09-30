build:
	GOOS=linux GOARCH=amd64 go build -ldflags="-s -w" -gcflags "all=-trimpath=$(pwd)" -o build/friingo_server_amd64 -v server.go
	GOOS=linux GOARCH=arm64 go build -ldflags="-s -w" -gcflags "all=-trimpath=$(pwd)" -o build/friingo_server_arm64 -v server.go

clean:
	rm -rf build/friingo_server_*

.PHONY: all build clean