curl -X POST \
  http://localhost:8083/connectors/ \
  -H 'Accept: application/json' \
  -H 'Content-Type: application/json' \
  -H 'cache-control: no-cache' \
  -d '{ 
    "name": "microbank-core-connector",
    "config": {
        "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
        "tasks.max": "1",
        "database.hostname": "postgres",
        "database.port": "5432",
        "database.user": "microbank",
        "database.password": "microbank",
        "database.dbname" : "postgres",
        "database.server.name": "postgres",
        "database.history.kafka.bootstrap.servers": "kafka:9092"
    }
}'