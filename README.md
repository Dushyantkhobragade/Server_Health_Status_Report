# Server_Health_Status_Report
To fetch the server configuration and health report
- Script is written in bash and html. Frontend is html and in the backend it uses CGI bash script. It can run on RHEL/Centos however slight OS specific modification can allow to execute on other linux flavor.
- This script will allow to fetch remote server configuration/health report.
# Please find below steps to implement this script
1. Password less authentication between master server to client machine (from which report needs to fetch)
2. Install httpd packges on master server. Enable and start the httpd service.
3. update the http configuration as below
    $ cat /etc/httpd/conf/httpd.conf| grep DocumentRoot
       DocumentRoot "/var/www/html"
4. Now place Healthreport.html in /var/www/html dir and get_server_report.sh , server_health_report.sh in /var/www/cgi-bin dir. Make sure permission on html file would be 644, bash scripts would be 755.
5. Once you have all the files in place and open the browser with master server IP.
