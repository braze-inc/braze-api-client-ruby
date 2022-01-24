
if [ -z "$1" ]; then
  echo "Provide a commit message"
  exit 1
fi

git init -b main
git remote add origin git@github.com:braze-inc/braze-api-client-ruby.git
git fetch
git branch main origin/main
git add .
git commit -m "$1"
git push origin main