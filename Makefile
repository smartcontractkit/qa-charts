.PHONY: prettier-lint
prettier-lint:
	prettier -c --config ./.prettierrc.yaml --ignore-path ./.prettierignore ./

prettier-lint-write:
	prettier -w --config ./.prettierrc.yaml --ignore-path ./.prettierignore ./
