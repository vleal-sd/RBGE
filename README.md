RBGE
====

# The Unofficial RBGE Code Group Repo

Store any useful snippets within here!  Let's test it out and learn the various capabilities of Github and R and such!


To join the fun, once you've been added to the Fufluns organisation and can access this repo (and are hence reading this now, presumably), here's what to do:

1. Open git
2. Go to the location you want to **create your local version** of the repo. If you want it in a separate folder, use `cd` to change directory and `mkdir` followed by the foldername to create the new folder (e.g mkdir RBGECodeGroup).
3. Use `ls` to check the folder is empty
4. **Initialise the local repository** by using:
    * `git init`
5. **Link** the local repo you've just initialised (in this case we've called it "origin") to the main GitHub online remote repository (we'll call this "master") by using:
    * `git remote add origin master https://github.com/Fufluns/RBGE.git`
6. Now **verify** the repositories are linked, using: 
    * `git remote -v`
7. You should see two lines showing you the fetch/pull urls for your repo
8. Now **pull** the online content of the remote repo on GitHub down to your local repo, using: 
    * `git pull origin master` 
    * enter your login details
9. Use `git status` to **check** it's all good, and `ls` and `cd` to see what files and folders are there.
10. Make any changes locally, then **push** the changes up to the remote repo as usual using `git push` so we can all see them!

### Enjoy!

*******

### Who/What IS Fufluns?!  
_Fufluns<sup>*</sup> is the ancient Etruscan god of plant life, happiness and health and growth in all things_    - perfect for plant-focussed coders as we learn!

<sup>* - http://en.wikipedia.org/wiki/Fufluns</sup>

*******