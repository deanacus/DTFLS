set -g fish_prompt_pwd_dir_length 0

# Git prompt
set -g __fish_git_prompt_showdirtystate 'yes'
set -g __fish_git_prompt_showupstream 'yes'
set -g __fish_git_prompt_color_branch blue
set -g __fish_git_prompt_color_dirtystate FCBC47
set -g __fish_git_prompt_color_stagedstate green
set -g __fish_git_prompt_color_upstream cyan

# Git Characters
set -g __fish_git_prompt_char_dirtystate '*'
set -g __fish_git_prompt_char_stagedstate '⇢'
set -g __fish_git_prompt_char_upstream_prefix ' '
set -g __fish_git_prompt_char_upstream_equal ''
set -g __fish_git_prompt_char_upstream_ahead '⇡'
set -g __fish_git_prompt_char_upstream_behind '⇣'
set -g __fish_git_prompt_char_upstream_diverged '⇡⇣'

function _print_in_color
  set -l string $argv[1]
  set -l color  $argv[2]

  set_color $color
  printf $string
  set_color normal
end

function _prompt_color_for_status
  if test $argv[1] -eq 0
    echo magenta
  else
    echo red
  end
end

function fish_title
  echo (basename $PWD)
end

function fish_prompt
  set -l last_status $status

  _print_in_color "\n"(prompt_pwd) green

  if test (__fish_git_prompt)
    printf " on"
  end

  __fish_git_prompt " %s"

  _print_in_color "\n❯ " magenta

  set_color normal
end