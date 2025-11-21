.PHONY: day

day: 
	@echo "Working on day $(word 2,$(MAKECMDGOALS))"
	@mkdir -p build
	@cabal run --builddir=build $(word 2,$(MAKECMDGOALS))

clean:
	@echo "Purging build folders..."
	@rm -rf build
	@rm -rf zig-out
%:
	@:

