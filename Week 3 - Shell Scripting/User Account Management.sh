#!/bin/bash
# ===============================================================
# Script Name : user_management.sh
# Description : Manage user accounts (create, delete, reset, list)
# Author      : <Your Name>
# ===============================================================

# Function to display usage/help
usage() {
    echo "Usage: $0 [OPTION]"
    echo "Options:"
    echo "  -c, --create   Create a new user account"
    echo "  -d, --delete   Delete an existing user account"
    echo "  -r, --reset    Reset password of an existing account"
    echo "  -l, --list     List all user accounts with UID"
    echo "  -h, --help     Display this help message"
    exit 1
}

# Ensure script is run as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root!" 
   exit 1
fi

case "$1" in
    -c|--create)
        read -p "Enter new username: " username
        if id "$username" &>/dev/null; then
            echo "Error: User '$username' already exists!"
            exit 1
        fi
        read -s -p "Enter password: " password
        echo
        useradd -m "$username"
        echo "$username:$password" | chpasswd
        echo "✅ User '$username' created successfully!"
        ;;
        
    -d|--delete)
        read -p "Enter username to delete: " username
        if ! id "$username" &>/dev/null; then
            echo "Error: User '$username' does not exist!"
            exit 1
        fi
        userdel -r "$username"
        echo "🗑️ User '$username' deleted successfully!"
        ;;
        
    -r|--reset)
        read -p "Enter username to reset password: " username
        if ! id "$username" &>/dev/null; then
            echo "Error: User '$username' does not exist!"
            exit 1
        fi
        read -s -p "Enter new password: " password
        echo
        echo "$username:$password" | chpasswd
        echo "🔑 Password for '$username' reset successfully!"
        ;;
        
    -l|--list)
        echo "📋 List of users and their UIDs:"
        awk -F: '{ print $1, "=> UID:", $3 }' /etc/passwd
        ;;
        
    -h|--help|*)
        usage
        ;;
esac
