git add .
git commit -m "$(date +"%F %T")"
git push
rm -rf public
hugo
cp -rf public/* ../hugo-test
cd ../hugo-test
git add .
git commit -m "$(date +"%F %T")"
git push