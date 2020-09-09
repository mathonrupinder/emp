echo "Welcome to Employee wage computation prgram"
isPresent=1
wageperhr=20
ispartTime=1
isfullTime=2
randomCheck=$(( RANDOM%2 ))
if [ $isPresent -eq $randomCheck ]
then
        empcheck=$(( RANDOM%3 ))
           if [ $empcheck -eq $ispartTime ]
           then
              emphrs=4
           elif [ $empcheck -eq $isfullTime ]
           then
              emphrs=8

else
        emphrs=0
fi
fi
          salary=$(( emphrs*wageperhr ))
          echo "$salary"


