#!/bin/bash

# Setup script to create symbolic links in ~/.claude directory (user-level)
# This links the new_team configuration to the user's .claude directory structure

set -e  # Exit on error

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_DIR="${HOME}/.claude"

echo "Setting up .claude directory structure at ${CLAUDE_DIR}..."

# Create .claude directory if it doesn't exist
mkdir -p "${CLAUDE_DIR}"

# Create commands directory if it doesn't exist
mkdir -p "${CLAUDE_DIR}/commands"

# Function to create symlink with check
create_symlink() {
    local link_path="$1"
    local target_path="$2"
    
    # Remove existing symlink or file if it exists
    if [ -L "${link_path}" ] || [ -e "${link_path}" ]; then
        echo "Removing existing: ${link_path}"
        rm -rf "${link_path}"
    fi
    
    # Create the symlink
    ln -s "${target_path}" "${link_path}"
    echo "Created symlink: ${link_path} -> ${target_path}"
}

# Create symlinks (using absolute paths)
create_symlink "${CLAUDE_DIR}/agents" "${SCRIPT_DIR}/new_team/agents"
create_symlink "${CLAUDE_DIR}/commands/team" "${SCRIPT_DIR}/new_team/commands"
create_symlink "${CLAUDE_DIR}/data" "${SCRIPT_DIR}/new_team/data"
create_symlink "${CLAUDE_DIR}/tasks" "${SCRIPT_DIR}/new_team/tasks"
create_symlink "${CLAUDE_DIR}/templates" "${SCRIPT_DIR}/new_team/tasks"
create_symlink "${CLAUDE_DIR}/.agentrc.yaml" "${SCRIPT_DIR}/new_team/.agentrc.yaml"
create_symlink "${CLAUDE_DIR}/organizational-principles.yaml" "${SCRIPT_DIR}/new_team/organizational-principles.yaml"
create_symlink "${CLAUDE_DIR}/project-config.yaml" "${SCRIPT_DIR}/new_team/project-config.yaml"

echo ""
echo "Setup complete! Symbolic links created in ${CLAUDE_DIR}"
echo ""
echo "Directory structure:"
ls -la "${CLAUDE_DIR}"

