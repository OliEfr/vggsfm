cp .devcontainer/Dockerfile . 
docker build -t olivertum/vggsfm:latest .
docker push olivertum/vggsfm:latest
rm Dockerfile