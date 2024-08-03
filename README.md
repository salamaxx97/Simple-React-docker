# simple Dockerfile example to run REACTJS  

### to build image 
```
docker bulid -t imagename:tag .
docker run  -p 3000:3000 imagename:tag
```

or 

```
docker-compose up
```

### test if it is working
```
curl localhost:3000
```