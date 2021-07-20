# git cheatsheet
:octocat:

## git stash
* `git stash list` - list modifications stashed
* `git stash pop` - apply stashed modifications
* `git stash` - stash local modifications

## New Feature Practices
```
git checkout master
git pull
git branch <new_feature>

# implement new feature...

git checkout master
git pull
git checkout <new_feature>
git rebase master

# resolve any conflicts...

git push --set-upstream origin <new_feature>

# make pull request

```
