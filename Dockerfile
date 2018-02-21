FROM busybox

ADD index.html /www/index.html
ARG port="80"

EXPOSE ${port}
ENV PORT=${port}

# Create a basic webserver and sleep forever
CMD httpd -p $PORT -h /www; tail -f /dev/null

