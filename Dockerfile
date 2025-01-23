FROM denoland/deno:latest

# Set the working directory
WORKDIR /app

# Expose port 8000
EXPOSE 8000

# Deno cache directory
ENV DENO_DIR /_deno

RUN apt update && apt install -y git

CMD [ "task", "cms:prod" ]
