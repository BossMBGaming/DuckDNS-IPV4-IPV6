@echo off
set subdomains={'Your DuckDNS Subdomain Names Can Be Comma Seperated List'}
set yourtoken={'Your DuckDNS Account Tocken'}
for /F %%I in ('curl -s https://ipv4.icanhazip.com') do set ipv4=%%I
for /F %%I in ('curl -s https://ipv6.icanhazip.com') do set ipv6=%%I
curl https://www.duckdns.org/update?domains=%subdomains%^&token=%yourtoken%^&ip={%ipv4%}^&ipv6={%ipv6%}^&verbose=true