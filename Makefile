.PHONY: all
all: Main.java
	mkdir -p ./build
	javac -d ./build *.java
	cp manifest.mf build
	(cd build && jar -cfm hpc-maze-generator.jar manifest.mf *.class)
	echo "#!/usr/bin/env sh\njava -jar /usr/local/lib/hpc-maze-generator.jar \$$1" > build/hpc-maze-generator

.PHONY: clean
clean:
	rm -rf ./build

.PHONY: install
install:
	install build/hpc-maze-generator.jar /usr/local/lib
	install build/hpc-maze-generator /usr/local/bin

.PHONY: uninstall
uninstall:
	rm -f /usr/local/lib/hpc-maze-generator.jar
	rm -f /usr/local/bin/hpc-maze-generator