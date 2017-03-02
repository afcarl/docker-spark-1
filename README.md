# (py)Spark in Docker

Run any spark command as you normally would. Executables in Spark's `sbin`
directory will be kept in foreground to prevent the container from exiting.

```
docker run -d -P --name master cogentlabs/spark start-master.sh
docker run -d -P --name worker1 cogentlabs/spark start-slave.sh
docker run -it cogentlabs/spark pyspark --master=spark://<master_container_ip>:<7077_mapped_port>
```

Any non-Spark command can also be run as usual:

```
docker run -it cogentlabs/spark bash
```
