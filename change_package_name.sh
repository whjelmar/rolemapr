#!/bin/bash

read -p 'What would you like to name this new package? ' package_name
read -p 'Can you give a 1 sentence description of the purpose for the package? ' package_title

find . -path ./.git -prune -o -type f -exec sed -i "s/<<package_name>>/$package_name/g" {} +
find . -path ./.git -prune -o -type f -exec sed -i "s/<<package_title>>/$package_title/g" {} +

git mv default_template_name.Rproj "$package_name.Rproj"
git add --all
git commit -m "feat: replaced defaults in templates with package info"
git push

