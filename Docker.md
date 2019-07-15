# Docker

## Build Docker Image
```
docker build -t mybatis-mysql .
```
An empty database called `mybatis` will be created with a username of `root` and a password `mybatis`. 

## Run Docker Image
```
docker run -itd --rm --name mybatis-mysql -p 3306:3306 mybatis-mysql
```