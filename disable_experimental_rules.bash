#!/bin/bash
rules=($(ls experimental_rules/))
for f in ${rules[@]}
	do rm activated_rules/$f
done
