# VIM Github Review v0.0.1
Helper functions for github PR review workflow

NOTE: This is meant to complement https://github.com/dhruvasagar/dotfiles/blob/master/bin/review which allows for reviewing github PRs from the command-line.

## Installation

If you don't have a preferred installation method, I recommend
installing [packup](https://github.com/dhruvasagar/packup), and then simply
add this plugin to your configurations:

```vim
call packup#add('git@github.com:dhruvasagar/vim-github-review.git')
```

## Usage

At the moment this provides the commmand `:ReviewComment` to facilitate adding
a Review Comment to a given pull request. Invoke this method on the line where
you wish to add the review comment and it opens a new window to allow adding
of the review comment

## License

Copyright (c) Dhruva Sagar. Distributed under the same terms as Vim itself.
See `:help license`.
