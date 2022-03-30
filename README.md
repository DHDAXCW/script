# package_target
啊这。。。
# AES算法测试
- 复制链接在openwrt ttyd执行下面的命令
# SSR AES
``` 
wget https://raw.githubusercontent.com/DHDAXCW/script/master/test.sh && sh test.sh
```
# SS AES

```bash
wget https://raw.githubusercontent.com/DHDAXCW/script/master/bash.sh && bash.sh
```

- 然后回车等待测算。如下面测试结果。
- 我以r2c测的结果

-----------------nmsl friendlyarm -----------------
          
          Method aes-128-ctr speed: 225M          
          Method aes-128-cfb speed: 210M         
          Method aes-128-gcm speed: 95.5M          
          Method aes-256-ctr speed: 204M          
          Method aes-256-cfb speed: 191M        
          Method aes-256-gcm speed: 399M         
          Method chacha20 speed: 281M         
          Method chacha20-ietf speed: 268M          
          Method chacha20-ietf-poly1305 speed: 221M          
          Method rc4-md5 speed: 194M          
          Method xchacha20-ietf-poly1305 speed: 220M
-----------------nmsl friendlyarm -----------------

上面结果在内存超频环境下测的 勿喷！

# openwrt 测温脚本

```
wget https://raw.githubusercontent.com/DHDAXCW/script/master/cputemp.sh && bash cputemp.sh
```

# 一键测速脚本
执行下面代码
```
wget https://raw.githubusercontent.com/DHDAXCW/script/master/bench.sh && bash bench.sh
```
----------------------------------------------------------------------

 CPU Model             : Intel(R) Xeon(R) CPU E5-2683 v3 @ 2.00GHz
 
 CPU Cores             : 32
 
 CPU Frequency         : 1999.998 MHz
 
 CPU Cache             : 35840 KB
 
 Total Disk            : 99.5 GB (36.8 GB Used)
 
 Total Mem             : 15985 MB (483 MB Used)
 
 Total Swap            : 0 MB (0 MB Used)
 
 System uptime         : 0 days, 22 hour 3 min
 
 Load average          : 0.00, 0.00, 0.00
 
 OS                    : Ubuntu 20.04.3 LTS
 
 Arch                  : x86_64 (64 Bit)
 
 Kernel                : 5.4.0-91-generic
 
 TCP CC                : cubic
 
 Virtualization        : VMware
 
 Organization          : AS4134 CHINANET-BACKBONE
 
 Location              : Dongguan / CN
 
 Region                : Guangdong
 
----------------------------------------------------------------------

 I/O Speed(1st run)    : 46.0 MB/s
 
 I/O Speed(2nd run)    : 67.2 MB/s
 
 I/O Speed(3rd run)    : 30.6 MB/s
 
 Average I/O speed     : 47.9 MB/s
 
 
----------------------------------------------------------------------

 Node Name        Upload Speed      Download Speed      Latency
 
 Speedtest.net    33.39 Mbps        314.10 Mbps         19.49 ms
 
----------------------------------------------------------------------
