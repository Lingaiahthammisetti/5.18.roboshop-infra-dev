### Infra

![alt text](infra.jpg)


# Infrastructure creation and deletion

```
for i in  01-vpc/ 02-sg/ 03-bastion/ 04-databases/ 05-app-alb/ 06-catalogue/ 07-acm/ 08-web-alb/ 09-web/ 10-cdn/ 11-user/ 12-shipping/ 13-cart/ 14-payment/ ; do cd $i; terraform init -reconfigure; cd .. ; done 
```
```
for i in  01-vpc/ 02-sg/ 03-bastion/ 04-databases/ 05-app-alb/ 06-catalogue/ 07-acm/ 08-web-alb/ 09-web/ 10-cdn/ 11-user/ 12-shipping/ 13-cart/ 14-payment/ ; do cd $i; terraform plan; cd .. ; done 
```
```
for i in  01-vpc/ 02-sg/ 03-bastion/ 04-databases/ 05-app-alb/ 06-catalogue/ 07-acm/ 08-web-alb/ 09-web/ 10-cdn/ 11-user/ 12-shipping/ 13-cart/ 14-payment/ ; do cd $i; terraform apply -auto-approve; cd .. ; done 
```
```
for i in   14-payment/ 13-cart/ 12-shipping/ 11-user/ 10-cdn/ 09-web/ 08-web-alb/ 07-acm/ 06-catalogue/ 05-app-alb/ 04-databases/ 03-bastion/ 02-sg/ 01-vpc/ ; do cd $i; terraform destroy -auto-approve; cd .. ; done 

