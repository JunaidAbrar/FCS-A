git checkout -b branch2
touch file4
git add file4
git commit -m "commiting file4"

echo "updated content in file4" >> file4
git stash #to save my data while changing branches
git checkout main
