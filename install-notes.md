# install notes

Installation on CentOS 9.

dnf install:
- rubygems
- ruby-devel
- make
- gcc

using mines-reverted branch of legumeinfo/sequenceserver:
```
$ gem install bundler
$ cd sequenceserver
$ bundle config path 'vendor/bundle' --local
$ bundle install
$ bundle exec bin/sequenceserver
```
- let it install BLAST
- tell it data is /home/shokin/data

/etc/systemd/system/sequenceserver.service:
```
[Unit]
Description=SequenceServer as a service
After=network.target
StartLimitIntervalSec=0

[Service]
Type=simple
Restart=always
RestartSec=1
User=shokin
WorkingDirectory=/home/shokin/sequenceserver
ExecStart=/home/shokin/bin/bundle exec bin/sequenceserver

[Install]
WantedBy=multi-user.target
```

```
$ systemctl daemon-reload
$ systemctl start sequenceserver
```
