# terraform
Use a bash terminal 
After initializing Terraform with terraform init enter your credentials:
export AWS_ACCESS_KEY_ID=your_access_key
export AWS_SECRET_ACCESS_KEY=your_secret_access_key
Generate ssh key: ssh-keygen -t ed25519
Copy everything before id_ed25519, paste it into the prompt and enter: web-ssh-key as the name of the ssh key
Passphrase can be left empty
terraform plan 
terraform apply
Login to domain name registrar: https://login.ionos.es/
Dirección de correo: orsolya.pix@gmail.com
Contraseña: University22!+
At Dominios & SSL, find the domain name: siteoforsi.com
Click on the three dots and select Servidores DNS
On the next page, click Editar servidores DNS
Copy the DNS names from your Route 53 siteoforsi record and insert them to Servidor DNS1, DNS2, DNS3 and DNS4
Click Guardar
After it is written that it can take up to 48 hours to actualize, but for the first time it took about an hour and after just a few minutes
When using any IP address, use HTTP instead of HTTPS
