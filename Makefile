run:
	@kubectl apply -f assin#1/sc.yaml
	@kubectl apply -f assin#1/pvc.yaml
    @kubectl apply -f assin#1/secret.yaml
	@kubectl apply -f assin#1/secret-init.yaml
	@kubectl apply -f assin#1/data-depl-svc.yaml
	@kubectl apply -f assin#1/front-depl-svc.yaml
<<<<<<< HEAD

=======
>>>>>>> 7e7c7d183828f886afb90b2acc00bc1a75802ea1
fill-db:
	@kubectl apply -f assin#1/data-script.yaml

stop: 
	@kubectl delete -f assin#1/back-depl-svc.yaml
	@kubectl delete -f assin#1/data-depl-svc.yaml
	@kubectl delete -f assin#1/front-depl-svc.yaml
<<<<<<< HEAD
	@kubectl delete -f assin#1/data-script.yaml
=======
	@kubectl delete -f assin#1/data-script.yaml
>>>>>>> 7e7c7d183828f886afb90b2acc00bc1a75802ea1
