
```bash
git clone https://github.com/docimg/ctfshow_docker.git
cd ctfshow_docker/ctfshow_2020_mxjh_web25

docker build -t ctfshow/ctfshow_2020_mxjh_web25 .
docker push ctfshow/ctfshow_2020_mxjh_web25

docker stop ctfshow_2020_mxjh_web25
docker rm ctfshow_2020_mxjh_web25

docker run -d --name ctfshow_2020_mxjh_web25 -p 8082:80 -e 'FLAG=flag{f5562d0d-4404-4aa0-9372-241d7c7130dd}' ctfshow/ctfshow_2020_mxjh_web25

# debug shell
docker exec -it ctfshow_2020_mxjh_web25 /bin/bash
```

注意：<br>
在shell脚本中设置环境变量只在当前shell和子shell中起作用，<br>
当使用source xxx.sh时对当前进程所有shell生效，但依然对全局环境变量不生效。<br>

如果想对全局变量生效可以试试在该shell中异步启动php
