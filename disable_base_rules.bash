#!/bin/bash
rules=($(ls base_rules/))
for f in ${rules[@]}
	do rm activated_rules/$f
done
