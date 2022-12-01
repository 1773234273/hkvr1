FROM nginx:1.19.3-alpine
ENV TZ=Asia/Shanghai
RUN apk add --no-cache --virtual .build-deps ca-certificates bash curl unzip php7

COPY configure.sh /configure.sh

RUN chmod +x /configure.sh

ENTRYPOINT ["sh", "/configure.sh"]
