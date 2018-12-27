#!/bin/bash
echo "this command must be executed in root user."

nice_value=19
if [ $@ > 0 ] ;then
	if expr "$1" : '[0-9]*' > /dev/null ; then
		nice_value=$1
	fi
fi
echo "changing nice value to ${nice_value}..."
## renice_all
for user in `ps aux | tail -n +2 | cut -d " " -f 1 | sort | uniq`
do
    renice -n ${nice_value} -u ${user}
done

