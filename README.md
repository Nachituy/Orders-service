# Orders-service

Se realiza el build de la aplicacion
luego se construye el container image y realiza push al ECR

Se actualiza la imagen del POD en EKS via kubectl

Se necesita la creacion de secrets 

cat ~/.kube/config | base64   copiamos el stdout y lo  guardamos como KUBE_CONFIG_DATA  

# Secrets: 
Para Desarrollo en AWS GROLAND
- AWS_ACCESS_KEY_ID_DESA
- AWS_SECRET_ACCESS_KEY_DESA
- AWS_SESSION_TOKEN_DESA
- KUBE_CONFIG_DATA_DESA

Para Produccion en NGRECO (MAIN)

- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- AWS_SESSION_TOKEN
- KUBE_CONFIG_DATA




