## kcpsh

A bash scprit for start, stop and restart [kcptun](https://github.com/xtaci/kcptun). 

Improve [shadowsocks](https://shadowsocks.org/) connection.

### Prerequisites
#### Get the latest kcptun code
```bash
$ mkdir ~/kcptun
$ cd ~/kcptun
$ wget https://github.com/xtaci/kcptun/releases/download/v20170329/kcptun-linux-amd64-20170329.tar.gz
$ tar -zxvf kcptun-linux-amd64-20170329.tar.gz
```
> Please make sure choose the right release package for your system. Like 64x should choose `kcptun-linux-amd64-XXX.tar.gz`, 32x should choose `kcptun-linux-386-XXX.tar.gz`.

#### Get the latest kcpsh code
```bash
$ git clone https://github.com/zhgqthomas/kcpsh.git
$ chmod +x -R kcpsh
$ cd kcpsh
```

#### Setup server config
```json
{
    "listen": ":2333",
    "target": "0.0.0.0:$port",
    "key": "$password",
    "crypt": "aes-192",
    "mode": "fast2",
    "mtu": 1350,
    "sndwnd": 2048,
    "rcvwnd": 2048,
    "datashard": 70,
    "parityshard": 30,
    "dscp": 46,
    "nocomp": false,
    "acknodelay": false,
    "nodelay": 0,
    "interval": 40,
    "resend": 0,
    "nc": 0,
    "sockbuf": 4194304,
    "keepalive": 10
}
```
Replace `$port` & `$password` as you want to. 

- `listen`: kcptun listen port
- `target`: the shadowsocks address. Becasue kcptun & shadowsocks are on the same VPS. So the address is `0.0.0.0` doesn't need be changed. Unless you have mulitple IP address.
- `key`: make sure client & server have the same password

> `sndwnd` & `rcvwnd` should not over the your mainum bandwidth.  
>  How to reach the maximum bandwidth?  
> Increase -rcvwnd on KCP Client and -sndwnd on KCP Server simultaneously & gradually, the mininum one decides the maximum transfer rate of the link, as wnd * mtu / rtt; Then try downloading something and to see if it meets your requirements. (mtu is adjustable by -mtu)

Other parameter please check [here](https://github.com/xtaci/kcptun).

### start server
```bash
$ ./start.sh
```

### stop server
```bash
$ ./stop.sh
```

### restart server
```bash
$ ./restart.sh
```

## References
1. [Shadowsocks另一种双边加速软件 —— KCPTun](https://doub.io/ss-jc36/)