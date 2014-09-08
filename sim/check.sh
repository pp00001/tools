cat /etc/passwd | grep $1 > /dev/null
if [ $? -eq 0 ]
then
  echo found!
else
  echo not found!
fi

