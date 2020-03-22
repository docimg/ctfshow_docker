#!/bin/bash

if [[ -z $FLAG_COLUMN ]]; then
	FLAG_COLUMN="ffff1a9"
fi

if [[ -z $FLAG_TABLE ]]; then
	FLAG_TABLE="f1a9_i5_h3r3"
fi

mysql -uroot -pctfshow -e "USE ctfshow_web; \
	ALTER TABLE FLAG_TABLE CHANGE FLAG_COLUMN $FLAG_COLUMN varchar(128) NOT NULL DEFAULT 'not_flag'; \
	ALTER TABLE FLAG_TABLE RENAME $FLAG_TABLE; \
	INSERT INTO $FLAG_TABLE VALUES('${FLAG:0:21}');"

echo ${FLAG:21:21} > /flag

chmod 400 /flag
chown root:root /flag -R

rm -rf /flag.sh
