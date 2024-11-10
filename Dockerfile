# Usa una imagen base de Go
FROM golang:1.20

# Establece el directorio de trabajo
WORKDIR /app

# Copia el código fuente al contenedor
COPY . .

# Inicializa el módulo de Go
RUN go mod tidy

# Compila la aplicación
RUN go build -o main .

# Expón el puerto en el que correrá la app
EXPOSE 8585

# Ejecuta la aplicación
CMD ["./main"]