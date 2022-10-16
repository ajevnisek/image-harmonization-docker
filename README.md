# Image Harmonization Docker
Image Harmonization Docker Cheatsheet

# Setup
Create a directory shared with the docker
```bash
mkdir from_container
```
# Build docker Image
```bash
docker image build -t ajevnisek/image-harmonization-maps-detector .
```


# Run docker Container
```bash
docker run --rm --name mask-detector-container -dit -v \
  ~/Desktop/sandbox/image-harmonization-docker/from_container:/storage/jevnisek/ImageHarmonizationResults   ajevnisek/image-harmonization-maps-detector bash

```
## Debug
### watch logs
```bash
docker logs mask-detector-container -f
```

### bash to the container
```bash
docker exec -it mask-detector-container bash
```


# Misc
Clear all docker cache:
```bash
docker system prune -a
```

# Run a runai job running :
```bash
runai submit -g 1 --name mask-detector-container -i ajevnisek/image-harmonization-maps-detector -v ~/Desktop/sandbox/avidan-docker/from_container:/results --pvc=storage:/storage
```

