intpid=$(ps -aux | grep dunwu | grep -v grep | awk '{print $2}')
kill -9 $intpid
nohup java -Dtomcat.connector.port=9010 -cp ./target/JavaWebApp/WEB-INF/classes:./target/JavaWebApp/WEB-INF/lib/* io.github.dunwu.Main > temp.log &