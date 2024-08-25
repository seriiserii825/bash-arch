#!/bin/bash
# if in ~/.config have symlink lazygit
if [ ! -L ~/.config/lazygit ]; then
    ln -s ~/xubuntu/lazygit ~/.config/lazygit
    # in ~/.config/i3/config comment line exec_always --no-startup-id ~/.config/lazygit/lazygit-start.sh
    sed -i 's/^exec_always --no-startup-id ~/.config/lazygit/lazygit-start.sh/#exec_always --no-startup-id ~/.config/lazygit/lazygit-start.sh/' ~/.config/i3/config
fi
