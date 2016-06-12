TAG=20160611
git submodule update --init --recursive
git submodule foreach git pull origin master
cd geiaus-server && docker build -t gcr.io/nich01as-com/geiaus-server:$TAG .
gcloud docker push gcr.io/nich01as-com/geiaus-server:$TAG
# update deplouments
cd ..
kubectl apply -f geiaus-server-deployment.yaml

