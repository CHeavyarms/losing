## Data Model

`user` -- has_many --> `check_ins`
`user` -- has_many --> `goals`
`user` -- has_many --> `enrollments`

`challenge` -- has_many --> `enrollments`
`challenge` -- has_many --> `goals`

## User Flow

- Create challenge
- Invite users
- Post check ins
- Track progress on goals
- View challenge members
- Comment on challenge updates

## Dev Notes

Install vagrant and start.

```sh
vagrant up
vagrant ssh
```

**all instructions beyond this point in the dev notes occur on the vagrant VM**

Install RVM

```sh
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install ruby-2.2.3
```

Needed `libgmp3-dev` for `bcrypt-ruby` and `build-essential` for `eventmachine`

```sh
sudo apt-get install libgmp3-dev build-essential
```

Install MongoDB 3.0

```sh
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
```

```sh
cd /src/losing
bundle install
```

### Dev Setup Todo

- Convert into Ansible playbook
- Move mongrel instance to separate host
- Decide and provision app server stack