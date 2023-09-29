

request_type=$1
url=$2
data=$3

case $request_type in 
  "get")
    curl -X GET $url
    ;; 
  "post")
    curl -X POST -d data $url
    ;;
  "put")
    curl -X PATCH -d data $url 
    ;;
  "del")
    curl -X DELETE $url 
    ;;
esac 


