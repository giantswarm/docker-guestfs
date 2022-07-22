# docker-guestfs


```bash
$ docker run -it --privileged --rm --name guestfs --workdir /workdir -v "${PWD}:/workdir" giantswarm/guestfs:1.0.0 bash
```

Example in scripting:

```bash
docker container create -it --privileged --name guestfs --workdir /workdir -v "${PWD}:/workdir" giantswarm/guestfs:1.0.0 bash
docker container start guestfs

docker exec guestfs guestmount -a /workdir/flatcar_production_openstack_image.img -m /dev/sda6 /mnt

# Change the image, e.g.:
docker exec guestfs cp -a ./workdir/config.ign /mnt

docker exec guestfs guestunmount /mnt

# Wait for all files to flush in the image after unmount.
sleep 10

docker container stop guestfs
docker container rm guestfs
```
