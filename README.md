# THI MAIL RELAY

THI only allows SMTP from VPN (meanwhile IMAP, TCP 993, is also only acceptablie via VPN)  
Here is the `containerized` fix for the problem...

## Why

No need to stay fulltime on VPN, maybe somebody else can do for me...

## NO GUI is Better

[openfortivpn](https://github.com/adrienverge/openfortivpn) is used here, no need for GUIs, so just use this

## Resolv Conf

äh whut...  
need some other DNS set exta? No way, should be server provided

## BUILD

```bash
docker build -t openforti-tcp-relay:latest .
```

## RUN

```bash
docker run --rm -p 1587:587 -v $PWD/.conf:/tmp/conf --cap-add=NET_ADMIN --device=/dev/ppp openforti-tcp-relay:latest
```

## Licence

```raw
        DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
                    Version 2, December 2004

 Copyright (C) 2004 Sam Hocevar <sam@hocevar.net>

 Everyone is permitted to copy and distribute verbatim or modified
 copies of this license document, and changing it is allowed as long
 as the name is changed.

            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

  0. You just DO WHAT THE FUCK YOU WANT TO.
```
