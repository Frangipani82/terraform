# terraform
Use a bash terminal 
After initializing Terraform with terraform init enter your credentials:
export AWS_ACCESS_KEY_ID=your_access_key
export AWS_SECRET_ACCESS_KEY=your_secret_access_key
Generate ssh key:
ssh-keygen -t ed25519
Copy everything before id_ed25519, paste that in into the prompt and write: web-ssh-key - as the name
Passphrase can be left empty
terraform plan 
terraform apply
Login to domain name registrar: https://login.ionos.es/
Dirección de correo: orsolya.pix@gmail.com
Contraseña: University22!+
At Dominios & SSL find domain name: siteoforsi.com
Click at the three dots and click Servidores DNS
On the next page click Editar servidores DNS
Copy the DNS names from your Route53 siteoforsi record and insert them to Servidor DNS1, DNS2, DNS3 and DNS4
Click Guardar
After it is written that it can take up to 48 hours to actualize, but it just took a few minutes
When using any IP address, use http instead of https
