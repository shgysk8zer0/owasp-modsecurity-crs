#!/bin/bash
rules=($(ls slr_rules/))
for f in ${rules[@]}
	do ln -s $(pwd)/base_rules/$f activated_rules/$f
done
