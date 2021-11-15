.PHONY: default

default:
	echo "USAGE: make build/build-arm-v7a/build-arm-v8a"

.PHONY: build
build:
	make build-arm-v7a
	make build-arm-v8a

.PHONY: build-arm-v7a
build-arm-v7a:
	GOARCH=arm GOOS=android CGO_ENABLED=1 CC=/Android/sdk/ndk/23.0.7599858/toolchains/llvm/prebuilt/darwin-x86_64/bin/armv7a-linux-androideabi31-clang go build -buildmode=c-shared -o ./bin/armv7a/libm.so main.go
	echo "Build armeabi-v7a success"

.PHONY: build-arm-v8a
build-arm-v8a:
	GOARCH=arm64 GOOS=android CGO_ENABLED=1 CC=/Android/sdk/ndk/23.0.7599858/toolchains/llvm/prebuilt/darwin-x86_64/bin/aarch64-linux-android31-clang go build -buildmode=c-shared -o ./bin/armv8a/libm.so main.go
	echo "Build armeabi-v8a success"