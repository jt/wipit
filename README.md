wipit
======

wipit is a git command line utility that makes it easier to save work in progress.

Install
-------

    gem install wipit

Commands
--------

Save your work.

    $ wipit
    > git add . && git rm $(git ls-files --deleted) && git commit -m 'WIP'

Save your work to a topic branch.

    $ wipit my_wip_branch
    > git checkout -b my_wip_branch && git add . && git rm $(git ls-files --deleted) && git commit -m 'WIP'

Save your work to a topic branch and push to origin.

    $ wipit my_wip_branch -p
    > git checkout -b my_wip_branch && git add . && git rm $(git ls-files --deleted) && git commit -m 'WIP' && git push origin my_wip_branch
