#!/usr/bin/env bash
for OUT in $(sudo docker ps --format '{{.Names}}');
  do
	  volm=$(sudo docker inspect $OUT | jq '.[] | .Mounts[]')
	  echo "$OUT"
	  echo "$volm";
  done
for OUT in $(sudo docker ps --format '{{.Names}}');
  do
	  volm=$(sudo docker inspect $OUT | jq '.[] | .NetworkSettings.Ports')
	  echo "$OUT"
	  echo "$volm";
  done
