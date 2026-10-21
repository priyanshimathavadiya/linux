#!/bin/bash
echo "Enter directory name:"
read dir

tar -czf "backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz" "$dir"

echo "Backup created successfully"
