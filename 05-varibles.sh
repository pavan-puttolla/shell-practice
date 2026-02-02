#!/bin/bash

strat_time=$(date +%s)
echo "script started date and time : $strat_time"

sleep 5
end_time=$(date +%s)
echo "script ended date and time : $end_time"

duration=$((end_time - strat_time))
echo "script duration in seconds : $duration"