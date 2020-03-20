
```bash
git clone https://github.com/docimg/ctfshow_docker.git
cd ctfshow_docker/ctfshow_2020_web_15

docker build -t ctfshow/ctfshow_2020_web_15 .
docker push ctfshow/ctfshow_2020_web_15

docker stop ctfshow_2020_web_15
docker rm ctfshow_2020_web_15
docker run -d --name ctfshow_2020_web_15 -p 8083:80 -e 'FLAG=flag{f5562d0d-4404-4aa0-9372-241d7c7130dd}' ctfshow/ctfshow_2020_web_15

# debug shell
docker exec -it ctfshow_2020_web_15 /bin/bash
```
