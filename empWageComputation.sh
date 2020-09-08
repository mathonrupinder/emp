echo "Welcome to Employee wage computation prgram"
isPresent=1
randomCheck=$(( RANDOM%2 ))
if [ $isPresent -eq $randomCheck ]
then
        echo "Employee is present"
else
        echo "Not present"
fi
