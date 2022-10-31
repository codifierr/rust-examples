docker build . -t ssingh3339/a-http-ping

docker push ssingh3339/a-http-ping

# kubectl delete -f deployment.yaml

kubectl apply -f deployment.yaml