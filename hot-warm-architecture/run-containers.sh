# master-01
docker container run -d \
  --name master-01 \
  -v /Users/kay/works/elastic-stack/hot-warm-architecture/config/master-01/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
  --network es \
  -m 1024m \
  elasticsearch:7.5.0

# master-02
docker container run -d \
  --name master-02 \
  -v /Users/kay/works/elastic-stack/hot-warm-architecture/config/master-02/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
  --network es \
  -m 1024m \
  elasticsearch:7.5.0

# master-03
docker container run -d \
  --name master-03 \
  -v /Users/kay/works/elastic-stack/hot-warm-architecture/config/master-03/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
  --network es \
  -m 1024m \
  elasticsearch:7.5.0

# data-hot-01
docker container run -d \
  --name data-hot-01 \
  -v /Users/kay/works/elastic-stack/hot-warm-architecture/config/data-hot-01/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
  --network es \
  -m 1024m \
  elasticsearch:7.5.0

# data-hot-02
docker container run -d \
  --name data-hot-02 \
  -v /Users/kay/works/elastic-stack/hot-warm-architecture/config/data-hot-02/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
  --network es \
  -m 1024m \
  elasticsearch:7.5.0

# data-hot-03
docker container run -d \
  --name data-hot-03 \
  -v /Users/kay/works/elastic-stack/hot-warm-architecture/config/data-hot-03/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
  --network es \
  -m 1024m \
  elasticsearch:7.5.0

# data-warm-01
docker container run -d \
  --name data-warm-01 \
  -v /Users/kay/works/elastic-stack/hot-warm-architecture/config/data-warm-01/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
  --network es \
  -m 1024m \
  elasticsearch:7.5.0

# data-warm-02
docker container run -d \
  --name data-warm-02 \
  -v /Users/kay/works/elastic-stack/hot-warm-architecture/config/data-warm-02/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
  --network es \
  -m 1024m \
  elasticsearch:7.5.0

# data-warm-03
docker container run -d \
  --name data-warm-03 \
  -v /Users/kay/works/elastic-stack/hot-warm-architecture/config/data-warm-03/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
  --network es \
  -m 1024m \
  elasticsearch:7.5.0

# coordinator-01
docker container run -d \
  --name coordinator-01 \
  -v /Users/kay/works/elastic-stack/hot-warm-architecture/config/coordinator-01/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
  --network es \
  -p 9200:9200 \
  -p 9300:9300 \
  -m 1024m \
  elasticsearch:7.5.0

# ingest-01
docker container run -d \
  --name ingest-01 \
  -v /Users/kay/works/elastic-stack/hot-warm-architecture/config/ingest-01/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
  --network es \
  -m 1024m \
  elasticsearch:7.5.0

# kibana
docker container run -d \
  --name kibana \
  -v /Users/kay/works/elastic-stack/hot-warm-architecture/config/kibana/kibana.yml:/usr/share/kibana/config/kibana.yml \
  --network es \
  -p 5601:5601 \
  -m 512m \
  kibana:7.5.0

# cerebro
docker container run -d \
  --name cerebro \
  -p 9000:9000 \
  --network es \
  -m 512m \
  lmenezes/cerebro:0.8.5