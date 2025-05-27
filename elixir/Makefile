.PHONY: test

test:
	@for dir in */ ; do \
		if [ -f "$$dir/mix.exs" ]; then \
			echo "Running mix test in $$dir"; \
			(cd "$$dir" && mix test); \
		else \
			echo "Skipping $$dir (no mix.exs)"; \
		fi \
	done
