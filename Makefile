run:
	@kubectl apply -f assin#1/sc.yaml
	@kubectl apply -f assin#1/pvc.yaml
	@kubectl apply -f assin#1/secret.yaml
	@kubectl apply -f assin#1/secret-init.yaml
	@kubectl apply -f assin#1/data-depl-svc.yaml
	@kubectl apply -f assin#1/front-depl-svc.yaml

fill-db:
	@kubectl apply -f assin#1/data-script.yaml

stop: 
	@kubectl delete -f assin#1/back-depl-svc.yaml
	@kubectl delete -f assin#1/data-depl-svc.yaml
	@kubectl delete -f assin#1/front-depl-svc.yaml
	@kubectl delete -f assin#1/data-script.yaml

clean: 
	@kubectl delete -f assin#1/pvc.yaml

