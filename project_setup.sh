#!/bin/sh

echo "Removing existing project from public_html"

rm -rf ~/public_html/*

echo "Done removing project."

sleep 3

cd ~/project_repo/jonlukassen.com

echo "Pulling down new updates"

git pull origin prod

echo "Done pulling new updates"

echo "Copying project structure to live folder"

cp -r ~/project_repo/jonlukassen.com/* ~/public_html/

echo "Done copying project structure to live public_html folder"

cd ~/scripts

echo "Running permissions script"

bash permissions.sh

echo "Done running permissions script. Check www.jonlukassen.com to verify changes."