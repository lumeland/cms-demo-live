FROM denoland/deno:latest

# Set the working directory
WORKDIR /app

# Expose port 8000
EXPOSE 8000

# Deno cache directory
ENV DENO_DIR /_deno

# Force cache
RUN deno task build && deno cache https://deno.land/x/lume_cms_adapter@v0.1.3/mod.ts

CMD [ "task", "cms:prod" ]
