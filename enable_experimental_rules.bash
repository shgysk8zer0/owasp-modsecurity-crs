#!/bin/bash
rules=($(ls experimental_rules/))
for f in ${rules[@]}; do
	if [ ! -f activated_rules/$f ]; then
		ln -s $(pwd)/experimental_rules/$f activated_rules/$f
	fi
done
