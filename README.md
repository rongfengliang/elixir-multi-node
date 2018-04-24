# Clusterdemo

This projet just for cluster demo && build with docker-compose 

## How to run

* docker image build

```bash
docker-compose build
```

* docker-compose run

```bash
docker-compose up -d
```

* connect each node

```bash

iex --sname second -S mix

iex --sname fouth --erl " -config sys.config"  -S mix

```
