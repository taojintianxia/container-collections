## SysBench Docker

### build image
```
docker buildx build -t taojintianxia/sysbench:1.2.0 --platform linux/amd64,linux/arm64 . --push
```

### use image
```
docker run --add-host host.docker.internal:host-gateway --rm taojintianxia/sysbench:1.2.0 sysbench oltp_read_only --mysql-user=root --mysql-password='passw0rd' --mysql-host=host.docker.internal --mysql-port=3306 --mysql-db=sysbench --tables=1 --table-size=100 --report-interval=2 --time=3600 --threads=32 --max-requests=0 --percentile=99 --mysql-ignore-errors="all" --rand-type=uniform --range_selects=off --auto_inc=off prepare
```