# Function to log lazygit usage
log_lazygit() {
  # Check the last command executed
  if [ "$(history 1 | awk '{print $2}')" == "lazygit" ]; then
    # echo "Lazygit started by $(whoami) at $(date)" >> ~/lazygit_log.txt
    echo "Lazygit started by $(whoami) at $(date)"
  fi
}

# Add the log_lazygit function to PROMPT_COMMAND
PROMPT_COMMAND="log_lazygit; $PROMPT_COMMAND"
