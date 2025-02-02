# #!/bin/bash
# num=5
# while [ $num -gt 0 ]; do
#     echo "Countdown: $num"
#     num=$((num -1))
# done
# echo "Balst off!"

#!/bin/bash

while IFS= read -r line; do
    echo "Line: $line"
done < loops.md