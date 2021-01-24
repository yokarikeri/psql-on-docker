FROM dpage/pgadmin4:4

ARG db_1_service
ARG db_1_port
ARG db_1_user

# Locale Customization
ENV TZ Asia/Tokyo

# Add servers.json
USER root
RUN { \
        echo '{'; \
        echo '    "Servers": {'; \
        echo "        \"${db_1_service}\": {\"Name\": \"${db_1_service}\", \"Port\": ${db_1_port}, \"Group\": \"Servers\", \"SSLMode\": \"prefer\", \"Username\": \"${db_1_user}\", \"Host\": \"${db_1_service}\", \"MaintenanceDB\": \"postgres\"}"; \
        echo '    }'; \
        echo '}'; \
    } >> /pgadmin4/servers.json
USER pgadmin
