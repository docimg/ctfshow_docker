FROM ubuntu:18.04

RUN apt-get update \
	&& apt-get -y install netcat-traditional \
	&& update-alternatives --config nc \
	# ssh
	&& apt install -y openssh-server \
	&& echo "PermitRootLogin yes" >> /etc/ssh/sshd_config \
	&& sed -i 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config \
	&& echo "root:ctfshow" | chpasswd

CMD service ssh start && tail -F /dev/null