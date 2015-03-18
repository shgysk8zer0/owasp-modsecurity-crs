#!/bin/bash
rules=($(ls slr_rules/))
for f in ${rules[@]}
	do rm activated_rules/$f
done
