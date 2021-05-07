#!/usr/bin/env bash
for OUT in $(sudo docker ps --format '{{.Names}}');
  do
	  out=$(sudo docker inspect $OUT | jq '.[] | .Mounts[]')
	  echo "$OUT"
	  echo "$out";
  done
for OUT in $(sudo docker ps --format '{{.Names}}');
  do
	  out=$(sudo docker inspect $OUT | jq '.[] | .NetworkSettings.Ports')
	  echo "$OUT"
	  echo "$out";
  done
for OUT in $(sudo docker ps --format '{{.Names}}');
  do
	  out=$(sudo docker inspect $OUT | jq '.[] | .Path')
	  echo "$OUT"
	  echo "$out";
  done
