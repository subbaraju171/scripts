#!/usr/bin/env bash  ## This searches for Bash in the system’s $PATH and runs the first matching version. It works even if Bash is installed in a non-standard location.
echo "Hello, $USER! Welcome to Bash scripting."


#!/bin/bash
echo "Using /bin/bash: $(which bash)"

#!/usr/bin/env bash
echo "Using env bash: $(which bash)"
