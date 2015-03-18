#!/bin/bash
rules=($(ls base_rules/))
for f in ${rules[@]}; do
	if [ -f activated_rules/$f ]; then
		rm activated_rules/$f
	fi
done
