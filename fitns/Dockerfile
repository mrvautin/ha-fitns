FROM mrvautin/fitns:latest

# Set working directory
WORKDIR /var/www

# Install additional dependencies (example)
RUN apt-get update && apt-get install -y \
    curl

EXPOSE 3000

# Start the application
CMD ["npm", "run", "start"]