FROM node:8.11.3

# Install all dependencies of the current project.
COPY package.json package.json
COPY package-lock.json package-lock.json
RUN npm install --production

# Copy all local files into the image.
COPY . .

# Build for production.
CMD ["npm", "run", "start"]
