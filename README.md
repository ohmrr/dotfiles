# .dotfiles

Having a cluttered, and unorganized `$HOME` always bothered me. So I made this
in order to organize some of them and still have the same functionality that I
would normally. It's also a good idea to upload them to GitHub in case you ever
need to change your system. 

Using symlinks, you can keep all the files in a seperate directory and link them
to the `$HOME` directory, for all the important files that need to be in there.
For example:

`ln -s ~/.dotfiles/.zshrc ~/.zshrc`

Other files don't need to be in your home directory at all, like `.zsh_history`.
Keeping these less important files in a seperate directory can help out with all
the clutter.

## Note

There is no script to automate organizing your `$HOME` in this repo. It is here
to be used as a reference to others who want to do what I did here.