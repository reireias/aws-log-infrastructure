.PHONY: lint
lint:
	tflint

.PHONY: fmt
fmt:
	@if [ `terraform fmt | wc -c` -ne 0 ]; then echo "terraform files need be formatted"; exit 1; fi

.PHONY: vlidate
validate:
	terraform validate
