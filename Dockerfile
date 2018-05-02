FROM bitnami/rails

USER root

RUN apt-get update && apt-get install -y libjemalloc-dev

USER bitnami

ENV LD_PRELOAD /usr/lib/x86_64-linux-gnu/libjemalloc.so.1

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "3000"]