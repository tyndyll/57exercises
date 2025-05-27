.PHONY: test

test:
	@for dir in */ ; do \
		if [ -f "$$dir/Makefile" ]; then \
			echo "Running make test in $$dir"; \
			(cd "$$dir" && make test); \
		fi \
	done
