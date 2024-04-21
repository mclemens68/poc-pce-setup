if [ $# -eq 0 ]
  then
    echo "Run script with the workloader pce name as an argument"
    echo "Run workloader pce-list to get list of pce's"
    exit 1
fi

PCE_NAME=$1

# Delete rulesets
workloader ruleset-export --output-file delete_rulesets.csv --pce $PCE_NAME && workloader delete delete_rulesets.csv --pce $PCE_NAME --header href --update-pce --no-prompt --provision

# Delete labels
workloader label-export --output-file delete_labels.csv --pce $PCE_NAME && workloader delete delete_labels.csv --pce $PCE_NAME --header href --update-pce --no-prompt --provision

# Clean up temp workloader files
rm -rf delete_*.csv

# Import starter labels
workloader label-import workloader-label-import-poc.csv --update-pce --no-prompt --pce $PCE_NAME

# Import ignored-ports service
workloader svc-import workloader-svc-import-ignored-ports.csv --update-pce --no-prompt --pce $PCE_NAME --provision

# Import starter iplists
workloader ipl-import workloader-ipl-import-poc.csv --update-pce --no-prompt --pce $PCE_NAME --provision
