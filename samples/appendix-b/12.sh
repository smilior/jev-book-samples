... | jq '.answers | to_entries | map({(.key): (.value.confidence // .value.noul)}) | add'
