#!/bin/bash
rules=($(ls slr_rules/))
for f in ${rules[@]}; do
	if [ ! -f slr_rules/$f ]; then
		ln -s $(pwd)/slr_rules/$f activated_rules/$f
	fi
done
