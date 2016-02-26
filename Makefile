SRC=src/pandas.md
DST=index.html

all: $(DST)

index.html: $(SRC)
	./build.sh src/pandas.md $@

continuous:
	while :; do inotifywait -e modify $(SRC); make $(DST); done

.PHONY: continuous all
