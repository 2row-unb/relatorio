FROM luanguimaraesla/pandocker:0.2.0

RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean -y && \
    git clone https://github.com/2row-unb/relatorio.git /code && \
    mkdir /output

COPY ./scripts/ /

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/cmd.sh"]
