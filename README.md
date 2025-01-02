# eliottvincent.com
My personal website. [[view live]](https://eliottvincent.com)


#### Generate a development build
```sh
./tasks/start.sh
```

#### Generate a production build
```sh
./tasks/start.sh production
```

#### Run in development mode (with hot-reload)
```sh
./tasks/dev.sh
```

#### Update dependencies
```sh
bundle update
```

#### Troubleshooting

#### Bundler errors

If the error `Failed to open TCP connection to rubygems.org:443 (execution expired)` occurs, change the following configuration:

```
System Preferences > Wi-Fi > Details > TCP/IP > Configure IPv6 > Link-Local Only
```