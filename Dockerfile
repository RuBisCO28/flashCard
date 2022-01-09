FROM ruby:3.1.0-slim-bullseye

ENV ROOT="/myapp"
ENV LANG=C.UTF-8
ENV TZ=Asia/Tokyo

WORKDIR ${ROOT}

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    postgresql-client \
    git \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY Gemfile ${ROOT}
COPY Gemfile.lock ${ROOT}

RUN bundle install -j4

COPY . ${ROOT}

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
