echo TODOS:
grep -rnw . -e '// *[Tt][Oo][Dd][Oo]' | grep --invert-match \.obsidian

echo INCOMPLETOS:
grep -rnw . -e 'incompleto'
