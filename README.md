# Spark in Docker

Run any spark command as you normally would. Executables in Spark's sbin directory will be kept in foreground to prevent the container from exiting.

This image additionally has DataStax's open-source spark-cassandra-connector installed.

```
docker run -d -P --name master reactiveai/spark start-master.sh
docker run -d -P --name worker1 reactiveai/spark start-slave.sh
docker run -it reactiveai/spark pyspark --master=spark://10.1.3.2:7077
```

Alternatively, specify port binding:

```
docker run -d -p 7077:7077 -p 8080:8080 -p 8081:8081 -p 4040:4040 reactiveai/spark start-master.sh
```

Any non-Spark command can also be run as usual:

```
docker run -it reactiveai/spark bash
```
