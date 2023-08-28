docker build -t my-nginx .
docker run -d -p 80:80 my-nginx

echo "Waiting for nginx to start..."
sleep 5

curl -H "Host: www.example1.com" localhost
echo ""
curl -H "Host: www.example2.com" localhost
echo ""

echo "Stopping nginx..."
docker stop $(docker ps -a -q)