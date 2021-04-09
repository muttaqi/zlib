all:
	-@echo "Please use ./configure first.  Thank you."

wasm:
	emcc *.c -o dist/function.html -s "EXPORTED_FUNCTIONS=['_string_compress']" -s "EXPORTED_RUNTIME_METHODS=['ccall','cwrap']" --emrun

distclean:
	make -f Makefile.in distclean
