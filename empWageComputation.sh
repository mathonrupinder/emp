echo "Welcome to Employee wage computation prgram"

wageperhr=20
ispartTime=1
isfullTime=2

        empcheck=$(( RANDOM%3 ))
        case $empcheck in
             $ispartTime)
                   emphrs=4;;
             $isfullTime)
                   emphrs=8;;
            *)
        emphrs=0;;
      esac

          salary=$(( $emphrs*$wageperhr ))
          echo "$salary"


