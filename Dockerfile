FROM crystallang/crystal:1.20.0

WORKDIR /app

COPY shard.yml ./
RUN shards install

COPY . .

CMD ["crystal", "spec"]
