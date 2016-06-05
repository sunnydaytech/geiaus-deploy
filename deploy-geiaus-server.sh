docker build -t gcr.io/nich01as-com/geiaus-server:20160604 .
gcloud docker push gcr.io/nich01as-com/geiaus-server:20160604
# update deplouments
kubectl apply -f geiaus-server-deployment.yaml

