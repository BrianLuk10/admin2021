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

;configuration du ns
tm1-5.ephec-ti.be.	IN	NS	ns.tm1-5.ephec-ti.be.
ns	IN	A	51.210.42.17

;configuration du web
www	IN	A	51.210.42.17
b2b	IN	CNAME	www

;configuration du la VoIP
sip	IN	A	51.210.42.17
_sip._udp.tm1-5.ephec-ti.be.    SRV 0 0 5082 sip
_sip._tcp.tm1-5.ephec-ti.be.    SRV 0 0 5082 sip

;configuration du mail
mail	IN	A	51.210.42.17
@	IN	MX	10	mail.tm1-5.ephec-ti.be.
smtp	IN	CNAME	mail
pop3	IN	CNAME	mail
imap	IN	CNAME	mail
