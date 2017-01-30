FROM alpine

#Global Vars


COPY script.sh /script.sh

CMD ["/script.sh"]
