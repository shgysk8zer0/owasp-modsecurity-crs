#!/bin/bash
rules=($(ls optional_rules/))
for f in ${rules[@]}; do
	if [ ! -f optional_rules/$f ]; then
		ln -s $(pwd)/optional_rules/$f activated_rules/$f
	fi
done
