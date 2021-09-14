# DuckDNS-IPV4-IPV6 For Windows
A Windows Batch File that updates DuckDNS IPV4 and IPV6 using icanhazip.com


## How to Use
1. Copy Paste Batch Template (Be Sure to Remove [' '] Marks)

        @echo off
        set subdomains={'Your DuckDNS Subdomain Name(s) Can Be Comma Seperated List'}
        set yourtoken={'Your DuckDNS Account Tocken'}
        for /F %%I in ('curl -s https://ipv4.icanhazip.com') do set ipv4=%%I
        for /F %%I in ('curl -s https://ipv6.icanhazip.com') do set ipv6=%%I
        curl https://www.duckdns.org/update?domains=%subdomains%^&token=%yourtoken%^&ip={%ipv4%}^&ipv6={%ipv6%}^&verbose=true
    
2. Example Of What Your Script Should Look Like

        @echo off
        set subdomains={boss,update}
        set yourtoken={dnstok3n-cine-pie-ac90-duckdns132432}
        for /F %%I in ('curl -s https://ipv4.icanhazip.com') do set ipv4=%%I
        for /F %%I in ('curl -s https://ipv6.icanhazip.com') do set ipv6=%%I
        curl https://www.duckdns.org/update?domains=%subdomains%^&token=%yourtoken%^&ip={%ipv4%}^&ipv6={%ipv6%}^&verbose=true

3. Use Task Scheduler to Run Task Every (5 minutes) or how ever often you see fit.
