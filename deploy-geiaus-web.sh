TAG=20160611
git submodule update --init --recursive
git submodule foreach git pull origin master
cd geiaus-web && docker build -t gcr.io/nich01as-com/geiaus-web:$TAG .
gcloud docker push gcr.io/nich01as-com/geiaus-web:$TAG
# update deplouments
cd ..
kubectl apply -f geiaus-web-deployment.yaml

