#!/usr/bin/env fish

# determine length of shortest sample
set shortest 1000000
for file in ./samples/*
	set length (cat $file | wc -l | bc)
	if [ $length -lt $shortest ]; set shortest $length; end
end

# truncate all
echo "truncating to $shortest lines"
for file in ./samples/*
	set file (basename $file)
	echo "samples/$file -> truncated/$file"
	cat "samples/$file" | tail -n $shortest > "truncated/$file"
end
