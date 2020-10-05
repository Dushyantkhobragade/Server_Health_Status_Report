#!/bin/bash
SERVER_NAME=${QUERY_STRING#*server_name=}
SERVER_NAME=${SERVER_NAME%%&*}
SERVER_NAME=${SERVER_NAME//+/ }
echo -e "Content-type: text/html\n"
echo -e '<style>
body {
  background-color: lightblue;
  font-family:verdana;
}
</style>'

echo "<html><body>"
echo "<h3><u>Server Health Report: $SERVER_NAME</u></h3>"
echo "<pre>"
scp /var/www/cgi-bin/server_health_report.sh   user_name@$SERVER_NAME:/home/user_name/
ssh -q user_name@$SERVER_NAME "sh /home/user_name/server_health_report.sh" || echo -e "<h4>Please Enter Valid Server Name :)</h4>"
echo "</pre>"
echo "</body></html>"
