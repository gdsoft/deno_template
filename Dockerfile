# Start With Latest LTS Ubuntu Image
FROM hayd/ubuntu-deno

# Set Working Directory
WORKDIR /app

# Use Non-root user
USER deno

#Cache Dependencies
COPY deps.ts .
COPY imports.json .
RUN deno cache --import-map=imports.json deps.ts

#ADD FILE CHANGES
ADD . .

# Compile to cache
RUN deno cache --import-map=imports.json src/index.js

# Run Program
# CMD PORT=$PORT deno run --allow-net --allow-env --import-map=imports.json src/index.js
# Keep in mind, if running a server that the app uses 0.0.0.0 as host
CMD PORT=$PORT deno run --allow-net --import-map=imports.json --allow-env src/index.js