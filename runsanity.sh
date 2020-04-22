#!/bin/bash
# This is an Sample CICD project for JAVA Web Application used for Wezva Technologies
# Author: Adam M       # Email: scmlearningcentre@gmail.com
# Phone: 9739110917    # www.wezva.com

log()
{
  echo -e "[`date '+%Y-%m-%d %T'`]:" $1
}


launch_container()
{
  log "INFO: Begin Docker container creation"
  IMG=$1
  
  log "INFO: Completed  Docker container creation"
}

test_container()
{
 log "INFO: Begin Docker Sanity check"

0 log "INFO: Completed Docker Sanity check"
 return 0
}


#MAIN#
launch_container $1
test_container ${TESTURL}
TRET=$?

if [ ${TRET} -ne "0" ]; then
  echo "You have done something wrong"
  echo "Reach Adam to fix the issue"
  echo "Ph: 9739110917 / Mail: scmlearningcentre@gmail.com"
  exit 1
else
   echo " You successfully did a sanity test for your image $1 "
   echo "Reach Adam for the next steps in CICD"
   echo "Ph: 9739110917 / Mail: scmlearningcentre@gmail.com"  
fi

