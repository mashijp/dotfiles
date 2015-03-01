# dotfiles

```
cd ~
git clone https://github.com/mashijp/dotfiles.git
cd dotfiles
./setup.sh
cd -
```

```
mkdir --mode=700 .ssh
cd .ssh
test -f "authorized_keys" || touch authorized_keys && chmod 600 authorized_keys
curl https://github.com/mashijp.keys >> authorized_keys
cat authorized_keys
cd -
```
