.PHONY: day

day: 
	@echo "Working on day $(word 2,$(MAKECMDGOALS))"
	@mkdir -p build
	@ghc -outputdir build -o build/output src/day$(word 2,$(MAKECMDGOALS)).hs
	@./build/output

clean:
	rm -rf build

%:
	@:

