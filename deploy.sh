REPO="naoimporta.github.io"
GH_REPO="github.com/naoimporta/${REPO}.git"
git config --global user.email "fabio@naoimporta.com"
git config --global user.name "Fabio Luciano"

git clone --recursive -b development 'https://'$GH_REPO development
git clone -b master 'https://'$GH_REPO master
hugo --source development --theme=blank
find ./master -not -path '*/\.git*' -not -path './master' -exec rm -fR {} \;
mv development/public/* master
cd master

git add -A :/
git commit -a -m "Travis Deploy"
git push "https://${GH_TOKEN}@${GH_REPO}" master > /dev/null 2>&1
