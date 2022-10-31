docker build . -t ssingh3339/r-http-ping

docker push ssingh3339/r-http-ping

# kubectl delete -f deployment.yaml

kubectl apply -f deployment.yaml