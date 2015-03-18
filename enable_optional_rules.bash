#!/bin/bash
rules=($(ls optional_rules/))
for f in ${rules[@]}
	do ln -s $(pwd)/optional_rules/$f activated_rules/$f
done
