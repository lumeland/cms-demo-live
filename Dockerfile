FROM denoland/deno:latest

# Set the working directory
WORKDIR /app

# Expose port 8000
EXPOSE 8000

COPY . /app

# Deno cache directory
ENV DENO_DIR /_deno

CMD [ "task", "cms:prod" ]
