#!/bin/bash

# Uninstall script to remove symbolic links from ~/.claude directory (user-level)
# This removes the links created by setup-claude-links.sh

set -e  # Exit on error

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_DIR="${HOME}/.claude"

echo "Removing symbolic links from .claude directory..."

# Function to remove symlink with check
remove_symlink() {
    local link_path="$1"
    
    if [ -L "${link_path}" ]; then
        echo "Removing symlink: ${link_path}"
        rm "${link_path}"
    elif [ -e "${link_path}" ]; then
        echo "Warning: ${link_path} exists but is not a symlink, skipping..."
    else
        echo "Symlink does not exist: ${link_path}"
    fi
}

# Check if .claude directory exists
if [ ! -d "${CLAUDE_DIR}" ]; then
    echo "Warning: .claude directory does not exist"
    exit 0
fi

# Remove symlinks
remove_symlink "${CLAUDE_DIR}/agents"
remove_symlink "${CLAUDE_DIR}/commands/team"
remove_symlink "${CLAUDE_DIR}/data"
remove_symlink "${CLAUDE_DIR}/tasks"
remove_symlink "${CLAUDE_DIR}/templates"
remove_symlink "${CLAUDE_DIR}/.agentrc.yaml"
remove_symlink "${CLAUDE_DIR}/organizational-principles.yaml"
remove_symlink "${CLAUDE_DIR}/project-config.yaml"

# Remove commands directory if it's empty
if [ -d "${CLAUDE_DIR}/commands" ] && [ -z "$(ls -A "${CLAUDE_DIR}/commands")" ]; then
    echo "Removing empty commands directory"
    rmdir "${CLAUDE_DIR}/commands"
fi

# Remove .claude directory if it's empty
if [ -d "${CLAUDE_DIR}" ] && [ -z "$(ls -A "${CLAUDE_DIR}")" ]; then
    echo "Removing empty .claude directory"
    rmdir "${CLAUDE_DIR}"
fi

echo ""
echo "Uninstall complete!"

# Show remaining contents if directory still exists
if [ -d "${CLAUDE_DIR}" ]; then
    echo ""
    echo "Remaining contents in ${CLAUDE_DIR}:"
    ls -la "${CLAUDE_DIR}"
fi

