FROM httpd:2.4-alpine
RUN apk update --update-cache && apk add python3 py3-pip \
    && rm -rf /var/cache/apk/*
RUN pip install j2cli
RUN rm -f /usr/local/apache2/htdocs/index.html
ADD index.html.j2 /usr/local/apache2/htdocs/
ADD docker-entrypoint.sh .
RUN chmod 755 docker-entrypoint.sh
ENV HTML_CONTENT="default"
CMD [ "sh", "-c", "./docker-entrypoint.sh" ]
