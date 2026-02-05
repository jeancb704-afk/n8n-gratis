FROM n8nio/n8n:latest

# O Render precisa da porta 10000
ENV PORT=10000
ENV N8N_PORT=10000

# Não vamos definir CMD nem ENTRYPOINT manual. 
# Vamos deixar a imagem usar o dela, apenas mudando o usuário para garantir.
USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n
USER node
