$TTL    600
@       IN      SOA     host.example.domain.com. hostmaster.example.domain.com. (
                     2015033101         ; Serial
                            600         ; Refresh
                            300         ; Retry
                           9600         ; Expire
                            600  )      ; Negative Cache TTL
;
@       IN      NS      a.ns.example.domain.com.
@	IN	NS	b.ns.example.domain.com.
@	IN	NS	c.ns.example.domain.com.

a.ns	IN	A	10.1.0.1
b.ns	IN	A	10.2.0.1
c.ns	IN	A	10.3.0.1

server	IN	A	10.0.0.1

www	IN	CNAME	server
