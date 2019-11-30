FROM alpine:latest
LABEL description="Example Dockerfile"
LABEL maintainer="samkennerly@gmail.com"

# Never store passwords in Docker images!
ENV PASSWORD='12345'

CMD echo "The combination on my luggage is: $PASSWORD"
