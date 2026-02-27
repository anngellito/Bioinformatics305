#!/bin/bash

if [ -z "$1" ]; then
    echo "No project name provided"
    exit 1
fi

mkdir -p $1/data
mkdir -p $1/scripts
mkdir -p $1/results

touch $1/data/raw_data.txt
chmod 600 $1/data/raw_data.txt

echo -e "#!/bin/bash\necho \"Hello from $1\"" > $1/scripts/run_analysis.sh
chmod +x $1/scripts/run_analysis.sh
