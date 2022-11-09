
#!/bin/bash
Ostania(){
    apt-get update
    
}
SSS(){
    echo "nameserver 192.168.122.1" > /etc/resolv.conf
    apt-get update
}

Garden(){
    echo "nameserver 192.168.122.1" > /etc/resolv.conf
    apt-get update
}

Wise() {
    echo "nameserver 192.168.122.1" > /etc/resolv.conf
    apt-get update
}

Berlint(){
    echo "nameserver 192.168.122.1" > /etc/resolv.conf
    apt-get update
}

Westalis(){
    echo "nameserver 192.168.122.1" > /etc/resolv.conf
    apt-get update

    apt-get install isc-dhcp-server
    dhcpd --version
    echo "INTERFACES=" > /etc/default/isc-dhcp-server
}

Eden(){
    echo "nameserver 192.168.122.1" > /etc/resolv.conf
    apt-get update
}

NewstonCastle(){
    echo "nameserver 192.168.122.1" > /etc/resolv.conf
    apt-get update
}

KemonoPark(){
    echo "nameserver 192.168.122.1" > /etc/resolv.conf
    apt-get update
}
if [ $HOSTNAME == "Ostania" ]
then
    Ostania
elif [ $HOSTNAME == "SSS" ]
then
    SSS
elif [ $HOSTNAME == "Garden" ]
then
    Garden
elif [ $HOSTNAME == "WISE" ]
then
    Wise
elif [ $HOSTNAME == "Berlint" ]
then
    Berlint
elif [ $HOSTNAME == "Westalis" ]
then
    Westalis
elif [ $HOSTNAME == "Eden" ]
then
    Eden
elif [ $HOSTNAME == "NewstonCastle" ]
then
    NewstonCastle
elif [ $HOSTNAME == "KemonoPark" ]
then
    KemonoPark
fi

