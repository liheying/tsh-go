
# 117
netstat -anp | grep udp | grep 38889 > /dev/null
if [ $? -ne 0 ]
then
  docker=$(docker ps | grep byte | awk '{print $1}' | head -1)
  echo $docker
  pid=$(docker inspect ${docker} | grep -e "Pid\"" | awk '{print $2}')
  pid=${pid%%,}
  echo $pid

  pid2=$(docker exec -it ${docker} bash -c "pidof btvdp")
  echo ${pid2}
  nsenter -p -t ${pid} net-check ${pid2}
else
  echo "ok"
fi


# jinniuyun
netstat -anp | grep udp | grep 38889 > /dev/null
if [ $? -ne 0 ]
then
  docker=$(docker ps | grep pcdn_blink | awk '{print $1}' | head -1)
  echo $docker
  pid=$(docker inspect ${docker} | grep -e "Pid\"" | awk '{print $2}')
  pid=${pid%%,}
  echo $pid

  pid2=$(docker exec -it ${docker} bash -c "pidof centaurs")
  echo ${pid2}
  nsenter -p -t ${pid} net-check ${pid2}
else
  echo "ok"
fi

# 153
netstat -anp | grep udp | grep 38889 > /dev/null
if [ $? -ne 0 ]
then
  docker=$(docker ps | grep legobox | awk '{print $1}' | head -1)
  echo $docker
  pid=$(docker inspect ${docker} | grep -e "Pid\"" | awk '{print $2}')
  pid=${pid%%,}
  echo $pid

  pid2=$(docker exec -it ${docker} bash -c "pidof pcdnClient-x86")
  echo ${pid2}
  nsenter -p -t ${pid} net-check ${pid2}
else
  echo "ok"
fi