cat event_history.csv | grep serdar | grep -i Terminateinstance | grep -Eo "i-[a-zA-Z0-9]{17}" > /tmp/result.txt

cat event_history.csv | grep -i "serdar"| grep -i "terminate" | grep -Eo "i-.{17}" | sort | uniq | tee result.txt
cat event_history.csv | grep -i "serdar"| grep -i "terminate" | grep -o "i................." | sort | uniq | tee result.txt 
cat event_history.csv | grep -i "serdar"| grep -i "terminate" | grep -Eo i-.{17}
