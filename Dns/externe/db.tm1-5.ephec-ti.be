;
; BIND data file for local loopback interface
;
$ORIGIN tm1-5.ephec-ti.be.
$TTL	604800
tm1-5.ephec-ti.be.	IN	SOA	ns.tm1-5.ephec-ti.be. he201676@students.ephec.be. (
			     10		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;

tm1-5.ephec-ti.be.	IN	NS	ns.tm1-5.ephec-ti.be.
ns	IN	A	51.210.42.17
www	IN	A	51.210.42.17
b2b	IN	A	51.210.42.17
