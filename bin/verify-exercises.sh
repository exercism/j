#!/usr/bin/env bash

# Synopsis:
# Test the track's exercises.

# Example:
# ./bin/verify-exercises.sh

exit_code=0

# Verify the Practice Exercises
for practice_exercise_dir in ./exercises/practice/*/; do
    if [ -d $practice_exercise_dir ]; then
        bin/verify-exercise.sh $(basename "${practice_exercise_dir}")
        if [ $? -ne 0 ]; then 
            echo "Error in ${practice_exercise_dir}"
            ((exit_code++))
        fi
    fi
done

exit $exit_code
