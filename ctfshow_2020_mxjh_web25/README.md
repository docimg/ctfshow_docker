
```bash
git clone https://github.com/docimg/ctfshow_docker.git
cd ctfshow_docker/ctfshow_2020_mxjh_web25

docker build -t ctfshow/ctfshow_2020_mxjh_web25 .
docker push ctfshow/ctfshow_2020_mxjh_web25

docker stop ctfshow_2020_mxjh_web25
docker rm ctfshow_2020_mxjh_web25
docker run -d --name ctfshow_2020_mxjh_web25 -p 8081:80 -e 'FLAG=flag{f5562d0d-4404-4aa0-9372-241d7c7130dd}' ctfshow/ctfshow_2020_mxjh_web25

# debug shell
docker exec -it ctfshow_2020_mxjh_web25 /bin/sh
```
