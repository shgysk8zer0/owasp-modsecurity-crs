#!/bin/bash
rules=($(ls optional_rules/))
for f in ${rules[@]}
	do rm activated_rules/$f
done
