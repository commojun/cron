FROM debian:bullseye

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y cron tzdata && \
    apt-get clean

# タイムゾーン設定
ENV TZ=Asia/Tokyo

# crontab設定ファイル
ENV CRONTAB_FILE=/crontab

COPY ./run.sh /run.sh

CMD ["/run.sh"]
