
```bash
git clone https://github.com/docimg/ctfshow_docker.git
cd ctfshow_docker/ctfshow_2020_web_15

docker build -t ctfshow/ctfshow_2020_web_15 .
docker push ctfshow/ctfshow_2020_web_15

docker stop ctfshow_2020_web_15
docker rm ctfshow_2020_web_15
docker run -d --name ctfshow_2020_web_15 -p 8083:80 -e 'FLAG=flag{934461ef-10cb-4ef5-ad95-a841753d7b42}' ctfshow/ctfshow_2020_web_15

# debug shell
docker exec -it ctfshow_2020_web_15 /bin/bash
```
