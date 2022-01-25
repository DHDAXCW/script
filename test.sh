#!/bin/ash

test_method='aes-128-ctr aes-128-cfb aes-256-ctr aes-256-cfb chacha20 chacha20-ietf rc4-md5'

gen_img_file(){
	dd if=/dev/zero of=/tmp/test.img bs=1M count=600
	ln -sf /tmp/test.img /www/test.img
}

gen_ssr_json(){
	cat <<-EOF > $PWD/ssr.json
	{
	 "server": "127.0.0.1",
	 "server_port": 8388,
	 "local_port":1080,
	 "password": "password",
	 "method": "$1",
	 "protocol": "origin",
	 "protocol_param": "",
	 "obfs": "plain",
	 "obfs_param": "",
	 "timeout": 120,
	 "udp_timeout": 60,
	 "fast_open": false,
	 "workers": 4,
	 "reuse_port":true
	}

	EOF
}

launch_ssr(){
	i=0
	while [ $i -lt 4 ]
	do
		ssr-server -c $PWD/ssr.json >/dev/null 2>&1 &
		ssr-local -c  $PWD/ssr.json >/dev/null 2>&1 &
		let i++
	done
}

stop_ss(){
	killall ssr-server ssr-local
}

clean_all(){
	rm -f /tmp/test.img /www/test.img $PWD/ssr.json $PWD/*curl_info
}

main(){
	set -x
	gen_img_file
	for method in $test_method
	do
		gen_ssr_json $method
		launch_ssr
		curl --socks5 127.0.0.1 127.0.0.1/test.img -o /dev/null 2>&1 | tee $PWD/${method}_curl_info
		stop_ss
	done
	set +x
	echo
	echo ----------------- tlnmsl friendlyarm -----------------
	for method in $test_method
	do
		echo "          Method $method speed: `cat ${method}_curl_info |grep '100'|awk -F ' ' '{print $(NF-5)}'`"
	done
	echo ----------------- tlnmsl friendlyarm -----------------
	echo
	set -x
	clean_all
}

main
~/rm -rf test.sh
