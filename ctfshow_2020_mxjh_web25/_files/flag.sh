#!/bin/bash

if [[ -z $FLAG_COLUMN ]]; then
	FLAG_COLUMN="ffff1a9"
fi

if [[ -z $FLAG_TABLE ]]; then
	FLAG_TABLE="f1a9_i5_h3r3"
fi

echo ${FLAG:14:14} > /flag

export FLAG=${FLAG:28:14}
unset FLAG_TABLE
unset FLAG_COLUMN

# 修改数据库中的 FLAG
mysql -e "USE ctfshow_web;ALTER TABLE FLAG_TABLE CHANGE FLAG_COLUMN $FLAG_COLUMN CHAR(128) NOT NULL DEFAULT 'not_flag';ALTER TABLE FLAG_TABLE RENAME $FLAG_TABLE;INSERT $FLAG_TABLE VALUES('${FLAG:0:14}');" -uroot -pctfshow

rm -f /flag.sh
