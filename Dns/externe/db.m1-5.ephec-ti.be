;
; BIND data file for local loopback interface
;
$ORIGIN m1-5.ephec-ti.be.
$TTL	604800
@	IN	SOA	ns.m1-5.ephec-ti.be. m1-5.ephec-ti.be. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;

@	IN	NS	ns.m1-5.ephec-ti.be.
@	IN	A	51.210.42.17

ns	IN	A	51.210.42.17
