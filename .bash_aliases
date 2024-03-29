
alias dcup='docker-compose -f /opt/docker-compose.yml up -d' #brings up all containers if one is not defined after dcup
alias dcdown='docker-compose -f /opt/docker-compose.yml stop' #brings down all containers if one is not defined after dcdown
alias dcpull='docker-compose -f /opt/docker-compose.yml pull' #pulls all new images is specified after dcpull
alias dclogs='docker-compose -f /opt/docker-compose.yml logs -tf --tail="50" '  
alias dtail='docker logs -tf --tail="50" "$@"'
