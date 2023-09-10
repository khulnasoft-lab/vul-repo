# vul-repo
deb/rpm repository for Vul

## Debian/Ubuntu

```
$ sudo apt-get install apt-transport-https
$ wget -qO - https://khulnasoft-lab.github.io/vul-repo/deb/public.key | sudo apt-key add -
$ echo deb https://khulnasoft-lab.github.io/vul-repo/deb [CODE_NAME] main | sudo tee -a /etc/apt/sources.list
$ sudo apt-get update
$ sudo apt-get install vul
```

CODE_NAME: wheezy, jessie, stretch, buster, trusty, xenial, bionic

## RHEL/CentOS

Add repository setting

```
$ sudo tee /etc/yum.repos.d/vul.repo << 'EOF'
[vul]
name=Vul repository
baseurl=https://khulnasoft-lab.github.io/vul-repo/rpm/releases/$basearch/
gpgcheck=1
enabled=1
gpgkey=https://khulnasoft-lab.github.io/vul-repo/rpm/public.key
EOF
```
Using `yum`:
```
$ sudo yum -y update
$ sudo yum -y install vul
```
Using `dnf`:
```
$ sudo dnf -y update
$ sudo dnf -y install vul
```
