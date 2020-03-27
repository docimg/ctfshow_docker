
# 基础ubuntu镜像（nc+ssh）

```bash
git clone https://github.com/docimg/ctfshow_docker.git
cd ctfshow_docker/base_ubuntu_with_nc

docker push ctfshow/base_ubuntu_with_nc




docker build -t ctfshow/base_ubuntu_with_nc .



docker stop ubuntu888
docker rm ubuntu888
docker run -itd --name ubuntu888 -p 8022:22 -p 8888:8888 ctfshow/base_ubuntu_with_nc

docker exec -it ubuntu888 /bin/bash



docker stop ubuntu999
docker rm ubuntu999
docker run -itd --name ubuntu999 -p 9022:22 -p 9999:9999 ctfshow/base_ubuntu_with_nc

docker exec -it ubuntu999 /bin/bash


```
