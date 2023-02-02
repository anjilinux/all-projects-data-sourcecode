GCE_DISK_NAME	?= nfs-server
GCE_DISK_SIZE	?= 100

create-disk:

	gcloud compute disks create $(GCE_DISK_NAME) --size $(GCE_DISK_SIZE) --type pd-ssd

install:

	kubectl apply -f manifests/

delete:

	kubectl delete -f manifests/
