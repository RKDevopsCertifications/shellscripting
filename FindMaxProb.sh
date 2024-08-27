#!/bin/bash

# Input: 
# n=3
# edges="[[0,1],[1,2],[0,2]]"
# succProb="0.5 0.5 0.2"
# start=0
# end=2

n=3
edges=([0,1] [1,2] [0,2])
succProb=(0.5 0.5 0.2)
start=0
end=2

declare -A graph

# Build graph
for i in "${!edges[@]}"; do
    edge=(${edges[$i]//,/ })
    u=${edge[0]}
    v=${edge[1]}
    prob=${succProb[$i]}
    graph["$u,$v"]=$prob
    graph["$v,$u"]=$prob
done

# Array to store max probability to reach each node
declare -A maxProb

# Initialize all probabilities to 0
for ((i=0; i<n; i++)); do
    maxProb[$i]=0
done

maxProb[$start]=1  # Probability to reach the start node is 1

# Priority Queue (using a sorted array in Bash)
queue=("$start")

# Dijkstra's like algorithm
while [ ${#queue[@]} -gt 0 ]; do
    node=${queue[0]}
    queue=("${queue[@]:1}")  # Dequeue

    for ((i=0; i<n; i++)); do
        if [[ -n ${graph["$node,$i"]} ]]; then
            prob=$(echo "${maxProb[$node]} * ${graph["$node,$i"]}" | bc -l)
            if (( $(echo "$prob > ${maxProb[$i]}" | bc -l) )); then
                maxProb[$i]=$prob
                queue+=($i)
                # Sorting the queue based on probabilities
                queue=($(for q in "${queue[@]}"; do echo $q; done | sort -nr -k1))
            fi
        fi
    done
done

# Output the max probability to reach the end node
echo "Max Probability to reach node $end: ${maxProb[$end]}"
