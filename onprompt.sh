__on_prompt() {
  local what="$1"

  [[ "$PROMPT_COMMAND" =~ "${what}" ]] && return

  if [ -z "$PROMPT_COMMAND" ]; then
    PROMPT_COMMAND="${what}"
  else
    PROMPT_COMMAND+=";${what}"
  fi
}

_prompt_dir() {
    [ -d ~/onprompt.d ] || return

    for _rc in ~/onprompt.d/*.sh; do
      . $_rc
    done
}

__on_prompt "_prompt_dir"
