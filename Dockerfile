FROM golang:1.21.1

# set destination for copy
WORKDIR /app
COPY . /app 

# Download Go modules
COPY go.mod go.sum ./
RUN go mod download 

# Copy the source code .
COPY *.go ./

# make a go Build
RUN CGO_ENABLED=0 GOOS=linux go build -o demmand_service /app

# bind to a TCP Port 
EXPOSE 9000

# run
CMD [ "./demmand_service" ]