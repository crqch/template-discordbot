FROM oven/bun:alpine

# Set work directory
WORKDIR /app

# Copy package.json
COPY package.json .

# Install dependencies
RUN bun install --production

# Copy source files
COPY src ./src

# Start bot
CMD ["bun", "run", "start"]