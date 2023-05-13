FROM node:latest
WORKDIR /app
COPY . /app
RUN npm install
EXPOSE 8000
CMD ["/app/run-server.sh"]
# CMD ["/bin/bash"]
# CMD ["npm", "start"]
