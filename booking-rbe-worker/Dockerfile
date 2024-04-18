FROM gcr.io/bazel-public/ubuntu2204-java17

RUN apt-get update -yq
RUN apt-get install -yq ca-certificates curl gnupg rsync

RUN groupadd \
  --gid 114 \
  engflow && \
  useradd \
  --home-dir /home/engflow \
  --create-home \
  --uid 108 \
  --gid 114 \
  engflow
ENV HOME=/home/engflow
