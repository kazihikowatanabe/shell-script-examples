#!/bin/bash

client_id=(
)

server_name=
host_name=
password=

for ((i = 0; i < ${#client_id[@]} ; i++)) {
  SQL1="USE ${client_id[$i]}"
  SQL2="select max(jID) from Jobs"
  ssh $server_name  "mysql -h ${host_name} -uroot -p${password} mysql -e '$SQL1;$SQL2;' -s -N"
}
