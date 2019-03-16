# 設定環境変数
export TAG=v1
export IMAGE_NAME=go-practice
export CONTAINER_NAME=${IMAGE_NAME}

# setup
setup:
	go get github.com/Masterminds/glide
	go get golang.org/x/tools/cmd/goimports
	go get github.com/Songmu/make2help/cmd/make2help
	go get golang.org/x/tools/cmd/godoc
	go get -u honnef.co/go/tools/cmd/staticcheck

# gofmt
# gofmt -s の結果 diff があるかどうか，つまりもっとシンプルにかけた部分がないかということをチェックできます．
gofmt-s:
	(! gofmt -s -d . | grep '^')

# ANSI color
RED=\033[31m
GREEN=\033[32m
RESET=\033[0m

COLORIZE_PASS=sed ''/PASS/s//$$(printf "$(GREEN)PASS$(RESET)")/''
COLORIZE_FAIL=sed ''/FAIL/s//$$(printf "$(RED)FAIL$(RESET)")/''

test:
	go test -race -cover -v `glide novendor` | $(COLORIZE_PASS) | $(COLORIZE_FAIL)

# lint
lint:
	golint -set_exit_status $$(go list ./...)
	go vet ./...

# docker build
docker-build:
	docker build -t ${IMAGE_NAME}:${TAG} ./

# docker run
docker-run:
	docker run -it --rm --name ${CONTAINER_NAME} ${IMAGE_NAME}:${TAG}
