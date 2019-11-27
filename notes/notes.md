Copy single file from another branch
* https://stackoverflow.com/questions/2364147/how-to-get-just-one-file-from-another-branch/2364223

```
git checkout master               # first get back to master
git checkout experiment -- app.js # then copy the version of app.js 
                                  # from branch "experiment"

```