set shell := ["bash", "-euo", "pipefail", "-c"]
set dotenv-load
set positional-arguments

_default:
  @just --list

# hello world
hello:
	@echo "Hello, this is just"
	@echo
	@echo "running in {{invocation_directory()}}"
	@echo "on {{os()}} {{arch()}}."
	@echo
	@echo "\$PATH is {{env_var_or_default('PATH', 'empty')}}."
	@echo
	@echo "Also \$FOO equals '$FOO'"

