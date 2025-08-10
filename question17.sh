#!/bin/bash
# =====================
# Setup branch1
# =====================
git checkout -b branch1 main

# Move foo from dir1/dir2 to dir1/
mv dir1/dir2/foo dir1/foo

# Remove dir2 if empty
rmdir dir1/dir2

# Remove bar_copy from dir3
rm dir3/bar_copy

# Create newfile1
echo "This is newfile1" > newfile1

# Stage and commit for branch1
git add .
git commit -m "Setup branch1 structure"

# =====================
# Setup branch2
# =====================
git checkout main
git checkout -b branch2 main

# Rename foo to foo_modified inside dir1/dir2
mv dir1/dir2/foo dir1/dir2/foo_modified

# Create dir3 inside dir1 and add newfile2 there
mkdir -p dir1/dir3
echo "This is newfile2" > dir1/dir3/newfile2

# Remove dir3 folder from root
rm -r dir3

# Stage and commit for branch2
git add .
git commit -m "Setup branch2 structure"

