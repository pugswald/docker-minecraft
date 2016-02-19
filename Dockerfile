FROM java:8
ADD start.sh /
RUN chmod u+x /start.sh
EXPOSE 25565
VOLUME ["/minecraft"]
WORKDIR /minecraft
ENTRYPOINT ["/start.sh"]
