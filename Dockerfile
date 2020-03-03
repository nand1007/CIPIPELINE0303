#First Dockerfile Implementation using Sample.sh
ARG version="18.04"
FROM ubuntu:$version
RUN echo "version is "$version
ENV encryption="99$"
LABEL MAINTAINER nan@devops.com
RUN mkdir /code
COPY Sample.sh /code/Sample.sh
RUN chmod +x /code/Sample.sh
RUN echo "ENCRYPTION is " $encryption
ENTRYPOINT ["sh","/code/Sample.sh"]
CMD ["/etc/hosts"]
