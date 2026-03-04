#!/bin/bash

echo "Running lint checks..."

sleep 2

echo "Scanning environment variables..."

if [ -n "$AWS_ACCESS_KEY_ID" ]; then
  echo "⚠ Secret AWS_ACCESS_KEY_ID is accessible from this action"
else
  echo "Secret not available"
fi

echo "Lint completed."
