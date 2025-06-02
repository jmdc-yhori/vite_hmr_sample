FROM ruby:3.3.0 as base
RUN apt-get update -qq && apt-get upgrade -y \
&& apt-get install -y build-essential libpq-dev nodejs npm \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

# z-scaler対応
COPY CA/ZscalerRootCertificate-2048-SHA256.crt /usr/share/ca-certificates/zscaler-root-ca.crt
RUN echo "zscaler-root-ca.crt" >> /etc/ca-certificates.conf
RUN apt-get update && apt-get install -y wget unzip sudo less ca-certificates && \
  update-ca-certificates

RUN npm install n -g
RUN n 22.2.0
RUN npm install typesync typescript ts-node -g
RUN mkdir /myapp
WORKDIR /myapp
ENV LANG C.UTF-8
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD . /myapp
RUN rm -rf /myapp/public/assets /myapp/public/packs
RUN mkdir /tmp/shared