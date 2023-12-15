FROM docker

COPY --chmod=755 docker-entrypoint.sh /usr/local/bin/

# DOCKER_LOGIN_REGISTRY: docker registry to log in to
ENV DOCKER_LOGIN_REGISTRY=
# DOCKER_LOGIN_USER: user for logging into docker registry
ENV DOCKER_LOGIN_USER=
# DOCKER_LOGIN_PASSWORD: password for logging into docker registry
ENV DOCKER_LOGIN_PASSWORD=
# MODE=v1|v2|swarm
ENV MODE=swarm
# NAME: compose project name (required for swarm mode)
ENV NAME=
# FILE: compose file name (use - for STDIN)
ENV FILE=
# CONTEXT: compose context directory (relative to project root)
ENV CONTEXT=.
# COMPOSE_BUILD=always|missing|never
ENV COMPOSE_BUILD=missing
# COMPOSE_RECREATE=always|missing|never
ENV COMPOSE_RECREATE=missing
# COMPOSE_PULL=always|missing|never
ENV COMPOSE_PULL=missing
# SWARM_PULL=always|changed|never
ENV SWARM_PULL=always
# STATE=present|absent
ENV STATE=present

ENTRYPOINT ["docker-entrypoint.sh"]
