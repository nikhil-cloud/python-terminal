docker build -t test .

docker run -p 8080:4200 --name python -d test
