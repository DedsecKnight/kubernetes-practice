# docker build -t dedsecknight/multi-client:latest -t dedsecknight/multi-cilent:$SHA -f ./client/Dockerfile ./client
# docker build -t dedsecknight/multi-server:latest -t dedsecknight/multi-server:$SHA -f ./server/Dockerfile ./server
# docker build -t dedsecknight/multi-worker:latest -t dedsecknight/multi-worker:$SHA -f ./worker/Dockerfile ./worker

# docker push dedsecknight/multi-client:latest
# docker push dedsecknight/multi-server:latest
# docker push dedsecknight/multi-worker:latest

# docker push dedsecknight/multi-client:$SHA
# docker push dedsecknight/multi-server:$SHA
# docker push dedsecknight/multi-worker:$SHA

kubectl apply -f k8s
# kubectl set image deployments/client-deployment client=dedsecknight/multi-client:$SHA
# kubectl set image deployments/server-deployment server=dedsecknight/multi-server:$SHA
# kubectl set image deployments/worker-deployment worker=dedsecknight/multi-worker:$SHA