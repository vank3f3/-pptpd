pptpd
=====


The Point-to-Point Tunneling Protocol is a method for implementing virtual private networks.

`PPTP` uses a control channel over TCP and a GRE tunnel operating to encapsulate PPP packets.


## Server Setup

```bash
$ modprobe ip_nat_pptp
$ git clone https://github.com/vank3f3/pptpd.git
$ cd pptpd
$ docker-compose up -d
$ docker-compose logs -f
```


## Client Setup

Connect PPTP server using `vpnuser:vpnpassword` with NO `mschap-v2/mppe-128` encyption.

## References

- <https://wiki.archlinux.org/index.php/PPTP_server>
- <https://wiki.archlinux.org/index.php/PPTP_Client>
