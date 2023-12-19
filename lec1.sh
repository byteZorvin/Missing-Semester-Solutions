mkdir missing
touch missing/semester
echo '#!/bin/sh' > missing/semester 
echo 'curl --head --silent https://missing.csail.mit.edu' >> missing/semester 
cd missing
stat --format %y semester | tee ~/last-modified.txt 
cat /sys/class/power_supply/BATO/energy_now
cat /sys/class/thermal/thermal_zone*/temp