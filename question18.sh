git fetch --all
git branch -r
git checkout main
for branch in $(git branch -r | grep 'origin/ready' | sed 's|origin/||'); do
    git merge $branch
done

for branch in $(git branch --list 'ready*'); do
    git branch -d $branch
done

for branch in $(git branch -r | grep 'origin/update' | sed 's|origin/||'); do
    git checkout $branch
    git merge main
done
