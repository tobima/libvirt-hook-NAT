# libvirt-hook-NAT
Bash script implementating libvirt hooks for settiing up  iptable port-forwading rules for NATed networking. Port-forwarding rules are stored in a JSON file.

### Prerequisites
[jq](https://stedolan.github.io/jq/) for parsing JSON files.

### Installtion
To install the hook script and it's configuration files, simply use the
Makefile_:

    $ sudo make install

Afterwards customize */etc/libvirt/hooks/hooks.json* to your needs and restart libvirt service.
This Makefile target can be invoked multiple times, already installed
configuration files won't be touched. The files can be removed again with:

    $ sudo make uninstall

## License

This project is licensed under the GPL v3.0 - see the [LICENSE](LICENSE) file for details

## Acknowledgments

* The basic function of hooks for libvirt is documented on the [libvirt webpage](https://www.libvirt.org/hooks.html)
* The idea for this script is based on an entry in the [libvirt-wiki](https://wiki.libvirt.org/page/Networking#Forwarding_Incoming_Connections)
