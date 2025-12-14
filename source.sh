
is_leap() {
  year=$1
  if (( (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) )); then
    return 0 
  else
    return 1 
  fi
}

read -p "Enter starting year: " start
read -p "Enter ending year: " end

count=0
echo "Leap years between $start and $end:"

for ((year=start; year<=end; year++)); do
  if is_leap "$year"; then
    echo "$year"
    ((count++))
  fi
done

echo "Total leap years: $count"
