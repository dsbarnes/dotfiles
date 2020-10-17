#! /bin/bash

# Install fish `brew install fish`
# You must run this script BEFORE pulling from git


# This file is fine tuned controls about everything there is for fish_git_prompt
# There is only one change to this file - on line 481 ()'s are changed to []'s
ln /usr/local/Cellar/fish/3.1.2/share/fish/functions/fish_git_prompt.fish fish_git_prompt.fish;

# This file controls how the user sees the standard prompt
ln /usr/local/Cellar/fish/3.1.2/share/fish/functions/prompt_pwd.fish prompt_pwd.fish;

# This file controls some fish_git_prompt and 'suffix' settings
ln /Users/dsbarnes/.config/fish/functions/fish_prompt.fish fish_prompt.fish;
mv fish_prompt.fish functions/
