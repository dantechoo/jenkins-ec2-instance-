# jenkins-ec2-instance-
set up jenkins on aws instance with terraform

after clone the the repo then update you personal aws access key and secret key on repo

run terraform init 
run terraform validate
run terraform fmt 
run terraform plan -out tfplan
run terraform apply tfplan
wait around 10-5 min then you can go to ec2 get the ip to access to jenkins server 
