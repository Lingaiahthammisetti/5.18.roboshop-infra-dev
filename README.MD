### Infra

![alt text](infra.jpg)


# Infrastructure creation and deletion

```
for i in  01-vpc/ 02-sg/ 04-databases/ 05-vpn/ 06-app-alb/ 07-catalogue/ 08-acm/ 09-web-alb/ 10-web/ 11-cdn/ 12-user/ 13-shipping/ 14-cart/ 15-payment/ 16-dispatch/  ; do cd $i; terraform init -reconfigure; cd .. ; done 
terraform init -upgrade
```
```
for i in  01-vpc/ 02-sg/ 04-databases/ 05-vpn/ 06-app-alb/ 07-catalogue/ 08-acm/ 09-web-alb/ 10-web/ 11-cdn/ 12-user/ 13-shipping/ 14-cart/ 15-payment/ 16-dispatch/  ; do cd $i; terraform plan; cd .. ; done 
```
```
for i in  01-vpc/ 02-sg/ 04-databases/ 05-vpn/ 06-app-alb/ 07-catalogue/ 08-acm/ 09-web-alb/ 10-web/ 11-cdn/ 12-user/ 13-shipping/ 14-cart/ 15-payment/ 16-dispatch/  ; do cd $i; terraform apply -auto-approve; cd .. ; done 
```
```
for i in 16-dispatch/ 15-payment/ 14-cart/ 13-shipping/ 12-user/ 11-cdn/ 10-web/ 09-web-alb/ 08-acm/ 07-catalogue/ 06-app-alb/ 05-vpn/ 04-databases/ 02-sg/ 01-vpc/ ; do cd $i; terraform destroy -auto-approve; cd .. ; done 



```
