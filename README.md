# Example Github Actions build pipeline using custom build image

## Create build image

How-to https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry

```
cd build-image
export CR_PAT=...
echo $CR_PAT | docker login ghcr.io -u samopus --password-stdin
docker build -t ghcr.io/samopus/actions-custom-image-build:2.5 .
docker push ghcr.io/samopus/actions-custom-image-build:2.5
```