echo "Welcome to Employee wage computation prgram"
isPresent=1
wageperhr=20
fulldayhr=8
randomCheck=$(( RANDOM%2 ))
if [ $isPresent -eq $randomCheck ]
then
        echo "Employee is present"
        dailywage=$(( $fulldayhr * $wageperhr ))
else
        echo "Not present"
        dailywage=0
fi
echo "salary=$dailywage"


