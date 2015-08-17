N=`cat data/txt/hightemp.txt | grep -c ""`
LINE_NUM=`expr $N / $1`
split -l $LINE_NUM data/txt/hightemp.txt data/txt/out.

