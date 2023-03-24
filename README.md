# jenkins-ec2-instance-
set up jenkins on aws instance with terraform

prepration:
AWS account
terraform 

after clone the the repo then update you personal aws access key and secret key on repo

1st setp :run terraform init 

![image](https://user-images.githubusercontent.com/17830034/227439157-dac1f928-e506-4455-b301-c8e3d0612a55.png)


2md step :run terraform validate

![image](https://user-images.githubusercontent.com/17830034/227439444-cad3cd02-84e4-46b6-80c5-d53a8a82b690.png)

3rd step :run terraform fmt 

![image](https://user-images.githubusercontent.com/17830034/227439735-c472f80f-2f2c-4c05-9d8f-079a9a37e9b4.png)

4th step :run terraform plan -out tfplan

![image](https://user-images.githubusercontent.com/17830034/227448347-a95a11b2-357c-4592-9817-bb6a8051a44c.png)


5th step :run terraform apply tfplan

![image](https://user-images.githubusercontent.com/17830034/227448403-fe01f31d-f6a0-470e-b887-8b8ac7e984c1.png)

wait around 10-5 min then you can go to ec2 get the ip to access on ec2 instance to  acess jenkins server , remember add port 8080 on ip to access jenkins

![image](https://user-images.githubusercontent.com/17830034/227448789-13b4aa5e-8e10-4437-8fa6-9ed3cf7b52f7.png)

and go to the ec2-instance to get password to access jenkins server 
to get password on ec2 instance command is sudo cat /var/lib/jenkins/secrets/initialAdminPassword

![image](https://user-images.githubusercontent.com/17830034/227449891-606818b5-111d-4ea9-97df-bb0c9fcaf996.png)

last part is run command terraform destroy to clean up 

![image](https://user-images.githubusercontent.com/17830034/227450587-10eb06bb-c3c0-4fde-bc75-689a14566c26.png)
![image](https://user-images.githubusercontent.com/17830034/227450648-91195179-232a-491c-8a6d-370c82388b2a.png)


