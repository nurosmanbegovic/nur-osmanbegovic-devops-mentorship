# TASK-7: Autoscaling Group and Load Balancer

#### Link na DNS record:  
http://alb-web-servers-2020198052.eu-central-1.elb.amazonaws.com/

#### Kreirajte AMI image od instance ec2-ime-prezime-web-server, AMI image nazovite ami-ime-prezime-web-server  
![Level 0](ami.png)  

#### Kreirajte Application Load Balancer pod nazivom alb-web-servers koji ce da bude povezan sa Target Group tg-web-servers  
![Level 0](tg.png)  
![Level 0](loadbalancer.png)  

#### Kreirajte Auto Scaling group sa MIN 2 i MAX 4 instance. Tip instance koji cete koristiti unutar ASG je t2.micro ili t3.micro gdje cete koristiti alb-web-servers Load Balancer  
![Level 0](asg.png)  

#### Voditite racuna da security grups koje budete koristili nakon sto zavrsite sa zadatakom dozvoljavaju namanje potrebne otvorene portove  
 ![Level 0](sgec2.png)  
 ![Level 0](sglb.png)  

#### Kreirajte free account na draw.io ili lucidchart.com stranicama i napravite dijagram infrastrukture iz ovog onako kako je vi vidite/razumijete.  
![Level 0](scheme.png) 

#### Pokusajte simulirati CPU load  
![Level 0](pic3.png) 
