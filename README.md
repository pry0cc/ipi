# ipi
I wrote this utility to help me more efficiently utilize the ipinfo.io API - especially the premium aspects.

# Installation
```
wget -O /tmp/install https://raw.githubusercontent.com/pry0cc/ipi/master/bin/iptools-install && chmod +x /tmp/install
/tmp/install <your token>
```

# Basic Usage


Look up a single IP
```
ipi 8.8.8.8
```

Parse an item from the results
```
ipi 8.8.8.8 .city
```

Make a CSV of a single IP
```
ipi 104.238.184.224 '[.city, .region, .hostname] | @csv'
```

Or you can read from stdin

```
cat ips.txt | ipi '.asn.asn'
```

You can do the exact same with ipr too, which is for ranges:
```
ipr AS7922

# Get all IP ranges for a given ASN
ipr AS7922 '.prefixes[].netblock'
```
