#!/bin/sh

set -e  # Exit on errors

echo "Waiting for database connection..."
until pg_isready -h db -U postgres -p 5432; do
  sleep 3
done

echo "Applying Prisma migrations..."
npx prisma db push

echo "Starting Fastify server..."
npm start
