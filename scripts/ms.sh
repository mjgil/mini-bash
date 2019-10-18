#!/usr/bin/env bash

# make_script
# $1 -- name of .sh file
if [ -e "$1.sh" ]; then
  echo "File exists"
else 
  touch $1.sh
  echo "#!/usr/bin/env bash" >> $1.sh
  echo "" >> $1.sh
  chmod +x $1.sh
  if [ -e "$1.sh" ]; then
    echo "File created successfully"
  else 
    echo "An error occurred"
  fi
fi
