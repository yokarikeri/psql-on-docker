FROM postgres:10.14

# Locale Customization
RUN localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8
ENV LANG ja_JP.utf8
ENV TZ Asia/Tokyo

# Execute DDL / DML (first time only)
COPY ./init/*.sql /docker-entrypoint-initdb.d/
