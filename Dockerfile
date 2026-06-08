FROM node:22-alpine

WORKDIR /app

# Install dependencies
COPY package.json package-lock.json* ./
RUN npm install

# Copy application files
COPY . .

# Build the application
RUN npm run build

# Expose the port
EXPOSE 3000

# Set environment
ENV NODE_ENV=production

# Start the application
CMD ["npm", "start"]
