#!/usr/bin/env fish

for file in ./samples/*
	set file (basename $file)
	echo "./samples/$file -> ./svg/$file.svg"
	./node_modules/.bin/code-to-svg "./samples/$file" "./svg/$file.svg" -s
end
