# clear bash cache
echo 'Clear bash cache'
hash -r

# concatenate all shell scripts together, so things like variables can be reused
echo 'Concatenate all scripts'
rm scripts_cat.sh
cat scripts/*.sh > scripts_cat.sh

echo 'Run...'
bash scripts_cat.sh
rm scripts_cat.sh

echo 'Run osx-for-hackers.sh'
sh osx-for-hackers.sh

