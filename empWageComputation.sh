echo "Welcome to Employee wage computation prgram"
wageperhr=20
ispartTime=1
isfullTime=2
fulldayhrs=8
halfdayhrs=4
workingdays=25
totalWorkHrs=100
workhrs=0
days=0
function getworkinghours() {
        case $empcheck in
             $ispartTime)
                   echo $halfdayhrs;;
             $isfullTime)
                   echo $fulldayhrs;;
            *)
                   echo 0;
      esac
}
while [[ $workhrs -lt $totalWorkHrs ]] && [[ $days -lt $workingdays ]]
do
      empcheck=$(( RANDOM%3 ))
      dailyhours="$( getworkinghours $empcheck )"
      dailywage=$(( dailyhours * wageperhr))
      workhrs=$(( workhrs + dailyhours ))
      totalsalary=$(( totalsalary + dailywage ))
      ((days++))
      echo "Day $days           workhrs $workhrs        dailywage  $dailywage          total       $totalsalary"

done

