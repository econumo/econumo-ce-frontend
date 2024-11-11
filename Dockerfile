FROM nginx:stable-alpine

WORKDIR /dist

COPY /dist /usr/share/nginx/html
RUN rm -rf /dist

CMD ["/entrypoint.sh"]
