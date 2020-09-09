echo "Welcome to Employee wage computation prgram"
wageperhr=20
ispartTime=1
isfullTime=2
totalsalary=0
workingdays=25
totalWorkHrs=100
workhrs=0
days=0
while [[ $workhrs -le $totalWorkHrs && $days -le $workingdays ]]
do
        empcheck=$(( RANDOM%3 ))
        case $empcheck in
             $ispartTime)
                   emphrs=4;;
             $isfullTime)
                   emphrs=8;;
            *)
                   emphrs=0;;
      esac

      dailywage=$(( $emphrs*$wageperhr ))
      totalsalary=$(( $totalsalary+$dailywage ))
      echo "$days    $workhrs  $dailywage  :     $totalsalary"

      workhrs=$(( $workhrs+$emphrs ))
          ((days++))


done


