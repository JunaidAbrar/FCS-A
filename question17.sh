git checkout -b branch1 main
git rm -r dir1/dir2 dir3/bar_copy
git rm LICENSE
git rm README.md
echo "This is newfile1" > newfile1
git add newfile1 LICENSE README.md
git commit -m "Setup branch1 structure"
git checkout main

git checkout -b branch2 main
git mv dir1/dir2/foo dir1/dir2/foo_modified

e
mkdir -p dir1/dir3
echo "This is newfile2" > dir1/dir3/newfile2
git rm dir3/bar dir3/bar_copy
git add dir1/dir2/foo_modified dir1/dir3/newfile2 LICENSE README.md
git commit -m "Setup branch2 structure"
