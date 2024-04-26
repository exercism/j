#!/usr/bin/env bash

# Synopsis:
# Test an exercise.

# Example:
# ./bin/verify-exercise.sh leap

set -euo pipefail
scriptname="${0}"

die() { echo >&2 "$*"; exit 1; }

(( $# >= 1 )) || die "Usage: ${scriptname} <exercise-slug>"

slug="${1}"
practice_exercise_dir="exercises/practice/${slug}"

if [[ ! -d "${practice_exercise_dir}" ]]; then
    die "Exercise '${slug}' not found"
fi

echo "Checking $(basename "${practice_exercise_dir}") exercise..."
jconsole bin/test_exercise.ijs "${practice_exercise_dir}/"
