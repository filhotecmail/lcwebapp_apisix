# Use a imagem oficial do Apache APISIX
FROM apache/apisix:latest

# Expõe as portas padrão do APISIX
EXPOSE 9080 9443

# Copie arquivos de configuração personalizados (se necessário)
# COPY ./conf/config.yaml /usr/local/apisix/conf/config.yaml

# Comando para iniciar o APISIX
CMD ["sh", "-c", "/usr/bin/apisix init && /usr/bin/apisix init_etcd && /usr/local/apisix/bin/apisix start"]
