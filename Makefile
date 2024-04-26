# Target: run-orders
# Description: Run the Go files in the 'services/orders/' directory.
run-orders:
	@go run services/orders/*.go

# Target: run-kitchen
# Description: Run the Go files in the 'services/kitchen/' directory.
run-kitchen:
	@go run services/kitchen/*.go

# Target: gen
# Description: Generate Go code from the protobuf definition file 'protobuf/orders.proto'.
#              The generated code will be placed in the 'services/common/genproto/orders' directory.
gen:
	@protoc \
		--proto_path=protobuf "protobuf/orders.proto" \
		--go_out=services/common/genproto/orders --go_opt=paths=source_relative \
  		--go-grpc_out=services/common/genproto/orders --go-grpc_opt=paths=source_relative
