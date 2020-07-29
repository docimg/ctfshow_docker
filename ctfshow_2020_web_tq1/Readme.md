```bash
docker build -t ctfshow/ctfshow_2020_web_tq1 .

docker stop tq1
docker run -d --rm --name tq1 -p 6666:80 -e FLAG=flag{1234567890abcdef} ctfshow/ctfshow_2020_web_tq1

docker exec -it tq1 /bin/bash

docker push ctfshow/ctfshow_2020_web_tq1
```
