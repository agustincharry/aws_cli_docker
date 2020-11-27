FROM python:3.6-alpine

RUN pip install awscli && apk add --update curl

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl

#RUN apk add --upgrade bash-completion

ENV AWS_DEFAULT_REGION=us-east-1


# aws eks list-clusters
# aws eks update-kubeconfig --name eks-integracion-dev

# docker run -it agustincharry/aws_cli:1.0 /bin/sh