FROM n8nio/n8n:latest

USER root
# Cria as pastas necessárias com permissões corretas
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node
# Porta padrão que o Render espera encontrar
ENV N8N_PORT=10000

# Comando usando o caminho absoluto do executável
CMD ["/usr/local/bin/n8n", "start"]
