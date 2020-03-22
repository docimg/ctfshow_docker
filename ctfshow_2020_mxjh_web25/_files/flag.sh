# /flag.sh

if [[ -z $FLAG_COLUMN ]]; then
	FLAG_COLUMN="ffff1a9"
fi

if [[ -z $FLAG_TABLE ]]; then
	FLAG_TABLE="f1a9_i5_h3r3"
fi

flag1=${FLAG:0:14}
flag2=${FLAG:14:14}
flag3=${FLAG:28:14}

mysql -uroot -pctfshow -e "USE ctfshow_web; \
	ALTER TABLE FLAG_TABLE CHANGE FLAG_COLUMN $FLAG_COLUMN varchar(128) NOT NULL DEFAULT 'not_flag'; \
	ALTER TABLE FLAG_TABLE RENAME $FLAG_TABLE; \
	INSERT INTO $FLAG_TABLE VALUES('$flag1');"

echo $flag2 > /flag

export FLAG=$flag3
