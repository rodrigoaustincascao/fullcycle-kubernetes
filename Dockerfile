FROM golang:1.15
COPY . .
RUN go build -o server .
CMD [ "./server" ]

# Build no terminal: docker build -t racascao/hello-go .
# Executar a imagem: docker run --rm -p 80:80 racascao/hello-go
# Enviar a imagem para dockerHub: docker push racascao/hello-go