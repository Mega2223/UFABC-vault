echo TODOS:
grep -rnw . -e '// *TODO' | grep --invert-match \.obsidian

echo INCOMPLETOS:
grep -rnw . -e 'incompleto'
