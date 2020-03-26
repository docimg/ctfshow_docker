
```bash
git clone https://github.com/docimg/ctfshow_docker.git
cd ctfshow_docker/ctfshow_2020_inner_web_03

docker build -t ctfshow/ctfshow_2020_inner_web_03 .
docker push ctfshow/ctfshow_2020_inner_web_03

docker stop ctfshow_2020_inner_web_03
docker rm ctfshow_2020_inner_web_03
docker run -d --name ctfshow_2020_inner_web_03 -p 8086:80 -e 'FLAG=flag{f3b57619-ceea-4645-a1bd-37a6bf61762e}' ctfshow/ctfshow_2020_inner_web_03

# debug shell
docker exec -it ctfshow_2020_inner_web_03 /bin/bash
```
