#!/bin/bash

echo "Starting CPU stress test..."
stress --cpu 4 --timeout 60 &

echo "Logging CPU temperature every 5 seconds..."
for i in {1..12}; do
  echo "$(date): $(sensors | grep 'Package id 0')" >> cpu_temp.log
  sleep 5
done

echo "Test complete. Results saved to cpu_temp.log"
