#!/usr/bin/env zsh

if ! typeset -f _command_exists > /dev/null; then
  function _command_exists () {
      command -v "$1" >/dev/null 2>&1
  }
fi

function aws_fzf_profile () {
    if _command_exists "aws"; then
      if _command_exists "fzf"; then
          # Get the current AWS profile
          CURR_AWS_PROFILE=$(aws configure list | grep -m 1 profile | awk '{print $2}')
          NEW_AWS_PROFILE=$(aws configure list-profiles | fzf --header="Current Profile: $CURR_AWS_PROFILE")
          
          if [ -n "$NEW_AWS_PROFILE" ]; then
              export AWS_PROFILE="$NEW_AWS_PROFILE"
              echo "Switched to profile \"$AWS_PROFILE\"."
          else
              echo "No profile selected. Keeping current profile \"$CURR_AWS_PROFILE\"."
          fi
      else
          echo "fzf is not available"
      fi
  else
      echo "aws is not available"
  fi
}

alias afp=aws_fzf_profile
alias aws-profile=aws_fzf_profile
echo "aws-profile zsh plugin loaded"
