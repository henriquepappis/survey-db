FROM mysql:8.0

# Valores padrão; use secrets do Fly.io para sobrepor senhas em produção.
ENV MYSQL_DATABASE=survey \
    MYSQL_USER=survey

# Saúde do container depende do MYSQL_ROOT_PASSWORD definido via fly secrets.
HEALTHCHECK --interval=15s --timeout=3s --start-period=30s --retries=5 \
  CMD mysqladmin ping -h 127.0.0.1 -uroot -p"$MYSQL_ROOT_PASSWORD" || exit 1

EXPOSE 3306
