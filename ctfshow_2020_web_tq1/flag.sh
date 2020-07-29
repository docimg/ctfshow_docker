#!/bin/sh

echo $FLAG > /flag
chmod 700 /flag

export FLAG=fake_flag
FLAG=fake_flag

apache2 -k start

rm -f /flag.sh

tail -f /dev/null
