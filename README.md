# Instructions for Downloading #
## Grabbing the source ##

[Repo](http://source.android.com/source/developing.html) is a tool provided by Google that
simplifies using [Git](http://git-scm.com/book) in the context of the Android source.

### Installing Repo ###

```bash
# Make a directory where Repo will be stored and add it to the path
$ mkdir ~/bin
$ PATH=~/bin:$PATH

# Download Repo itself
$ curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo

# Make Repo executable
$ chmod a+x ~/bin/repo
```

### Initializing Repo ###

```bash
# Create a directory for the source files
# You can name this directory however you want, just remember to replace
# WORKSPACE with your directory for the rest of this guide.
# This can be located anywhere (as long as the fs is case-sensitive)
$ mkdir WORKSPACE
$ cd WORKSPACE

# Install Repo in the created directory
$ repo init -u https://github.com/YosemiteExperience/MIUI_Scorpio_P.git -b manifest

# Or to initialize a shallow clone to greatly reduce sizes
$ repo init -u https://github.com/YosemiteExperience/MIUI_Scorpio_P.git -b manifest --depth=1
```

### Downloading all the files to local ###
```bash
$ repo sync -j4
# where "4" is the number of cores your machine has
```
