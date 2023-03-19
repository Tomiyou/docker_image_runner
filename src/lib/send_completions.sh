## [@bashly-upgrade completions send_completions]
send_completions() {
  echo $'# simple-docker-run completion                             -*- shell-script -*-'
  echo $''
  echo $'# This bash completions script was generated by'
  echo $'# completely (https://github.com/dannyben/completely)'
  echo $'# Modifying it manually is not recommended'
  echo $''
  echo $'_simple-docker-run_completions_filter() {'
  echo $'  local words="$1"'
  echo $'  local cur=${COMP_WORDS[COMP_CWORD]}'
  echo $'  local result=()'
  echo $''
  echo $'  if [[ "${cur:0:1}" == "-" ]]; then'
  echo $'    echo "$words"'
  echo $'  '
  echo $'  else'
  echo $'    for word in $words; do'
  echo $'      [[ "${word:0:1}" != "-" ]] && result+=("$word")'
  echo $'    done'
  echo $''
  echo $'    echo "${result[*]}"'
  echo $''
  echo $'  fi'
  echo $'}'
  echo $''
  echo $'_simple-docker-run_completions() {'
  echo $'  local cur=${COMP_WORDS[COMP_CWORD]}'
  echo $'  local compwords=("${COMP_WORDS[@]:1:$COMP_CWORD-1}")'
  echo $'  local compline="${compwords[*]}"'
  echo $''
  echo $'  case "$compline" in'
  echo $'    \'completions\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_simple-docker-run_completions_filter "--help -h")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'uninstall\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_simple-docker-run_completions_filter "--help -h")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'create\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_simple-docker-run_completions_filter "--help -h")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'remove\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_simple-docker-run_completions_filter "$(docker ps -a --filter "label=simple_docker_run" --format \'{{.Names}}\' 2> /dev/null) --help -h")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'run\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_simple-docker-run_completions_filter "$(docker ps -a --filter "label=simple_docker_run" --format \'{{.Names}}\' 2> /dev/null) --help -h")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    *)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_simple-docker-run_completions_filter "--help --version -h -v completions create remove run uninstall")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'  esac'
  echo $'} &&'
  echo $'complete -F _simple-docker-run_completions simple-docker-run'
  echo $''
  echo $'# ex: filetype=sh'
}