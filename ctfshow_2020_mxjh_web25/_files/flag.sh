#!/bin/bash

echo "start flag.sh"

FLAG_COLUMN="ffff1a9"

FLAG_TABLE="f1a9_i5_h3r3"

mysql -e "USE ctfshow_web; \
	ALTER TABLE FLAG_TABLE CHANGE FLAG_COLUMN $FLAG_COLUMN varchar(128) NOT NULL DEFAULT 'not_flag'; \
	ALTER TABLE FLAG_TABLE RENAME $FLAG_TABLE; \
	INSERT $FLAG_TABLE VALUES('${FLAG:0:14}');" -uroot -pctfshow

echo ${FLAG:14:14} > /flag

export FLAG=${FLAG:28:14}
unset FLAG_TABLE
unset FLAG_COLUMN

rm -rf /flag.sh
