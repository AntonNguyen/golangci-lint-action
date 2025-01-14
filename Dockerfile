FROM golang:1.13.1

LABEL repository="https://github.com/antonnguyen/golangci-lint-action"
LABEL homepage="https://github.com/antonnguyen/golangci-lint-action"
LABEL maintainer="Anton Nguyen <afnguyen85@gmail.com>"

LABEL com.github.actions.name="Action - GolangCI Lint"
LABEL com.github.actions.description="Lint your Go code with GolangCI Lint"
LABEL com.github.actions.icon="code"
LABEL com.github.actions.color="blue"

ENV GOPROXY https://proxy.golang.org

RUN go get -v github.com/golangci/golangci-lint/cmd/golangci-lint
RUN go get -v github.com/antonnguyen/golangci-lint-action

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
