#!/bin/bash

echo Starting Uvicorn
exec uvicorn main:app \
  --host 0.0.0.0 \
  --port 80 \
  --workers 3 \
  --access-log \
  --use-colors \
  --log-level=debug \
  "$@"
