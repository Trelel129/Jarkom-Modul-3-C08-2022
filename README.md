# Jarkom-Modul-3-C08-2022


## Anggota Kelompok
|No|NRP|Nama|
|-|-|-|
|1|5025201043|Fahmi Muhazir|
|2|5025201204|Moh Akmal Ali Dzikri|
|3|5025201214|Ferry Nur Alfian Eka Putra|

>1

Topografi <br>
![image](https://user-images.githubusercontent.com/89815856/201476819-d0552ae3-9c51-47be-acc4-659e0f481240.png)
![image](https://user-images.githubusercontent.com/89815856/201477651-64428ba5-03f9-41e4-a2f6-2635cadb85cf.png)

<br>
Ostania Config

```auto eth0
iface eth0 inet static
	address 192.183.0.1
	netmask 255.255.255.0

auto eth1
iface eth1 inet static
	address 192.183.1.1
	netmask 255.255.255.0

auto eth2
iface eth2 inet static
	address 192.183.2.1
	netmask 255.255.255.0

auto eth3
iface eth3 inet static
	address 192.183.3.1
	netmask 255.255.255.0
#iface eth0 inet dhcp
#iface eth1 inet dhcp
#iface eth2 inet dhcp
#iface eth3 inet dhcp
```

SSS Config
```
auto eth0
iface eth0 inet static
	address 192.183.1.2
	netmask 255.255.255.0
	gateway 192.183.1.1
#iface eth0 inet dhcp
```

Garden Config
```
auto eth0
iface eth0 inet static
	address 192.183.1.3
	netmask 255.255.255.0
	gateway 192.183.1.1
#iface eth0 inet dhcp
```

Wise Config
```
auto eth0
iface eth0 inet static
	address 192.183.2.2
	netmask 255.255.255.0
	gateway 192.183.2.1
#iface eth0 inet dhcp
```

Wise Bash
```
echo "nameserver 192.183.122.1" > /etc/resolv.conf
    apt-get update
    apt-get install bind9 -y
    echo
    "zone "jarkom2022.com" {
        type master;
        file "/etc/bind/jarkom/jarkom2022.com";
    }; " > /etc/bind/named.conf.local
    mkdir /etc/bind/jarkom
    cp /etc/bind/db.local /etc/bind/jarkom/jarkom2022.com
    echo "
    ; BIND data file for local loopback interface
    ;
    $TTL    604800
    @       IN      SOA     jarkom2022.com. root.jarkom2022.com. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
    ;
    @       IN      NS      jarkom2022.com.
    @       IN      A       192.183.2.2 ;IP Wise
    @       IN      AAAA    ::1
    www     IN      CNAME   jarkom2022.com.
    " > /etc/bind/jarkom/jarkom2022.com
    service bind9 restart
```

Berlint Config
```
auto eth0
iface eth0 inet static
	address 192.183.2.3
	netmask 255.255.255.0
	gateway 192.183.2.1
#iface eth0 inet dhcp
```

Westalis Config
```
auto eth0
iface eth0 inet static
	address 192.183.2.3
	netmask 255.255.255.0
	gateway 192.183.2.1
```

Westalis Bash
```
echo "nameserver 192.183.2.2" > /etc/resolv.conf
    apt-get update

    apt-get install isc-dhcp-server -y
    dhcpd --version

    echo
    "subnet 192.183.2.0 netmask 255.255.255.0 {
        range 192.183.2.5 192.183.2.30;
        option routers 192.183.2.1;
        option broadcast-address 192.183.2.255;
        option domain-name-servers jarkom2022.com;
        default-lease-time 600;
        max-lease-time 7200;
    }" > /etc/dhcp/dhcpd.conf

    service isc-dhcp-server restart
    service isc-dhcp-server status
```

Eden Config
```
auto eth0
iface eth0 inet static
	address 192.183.3.2
	netmask 255.255.255.0
	gateway 192.183.3.1
#iface eth0 inet dhcp
```

NewstonCastle Config
```
auto eth0
iface eth0 inet static
	address 192.183.3.3
	netmask 255.255.255.0
	gateway 192.183.3.1
#iface eth0 inet dhcp
```

KemonoPark Config
```
auto eth0
iface eth0 inet static
	address 192.183.3.4
	netmask 255.255.255.0
	gateway 192.183.3.1
#iface eth0 inet dhcp
```


>
