FROM mhart/alpine-node

RUN npm install -g http-server

WORKDIR /siteyfm -i ./input-folder -o ./ouput-folder

ADD ./_site /site/docs
docker buildx build -t test .  
EXPOSE 5000

CMD ["http-server", "--port=5000", "--host=0.0.0.0", "--cors", " --log-ip", "./"]
