#!/usr/bin/env fish

for file in ./truncated/*
	set file (basename $file)
	echo "./truncated/$file -> ./svg/$file.svg"
	./node_modules/.bin/code-to-svg "./truncated/$file" "./svg/$file.svg" -s
end
