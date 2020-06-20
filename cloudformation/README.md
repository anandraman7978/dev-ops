Automatic Building of AWS Cloud Network with CloudFormation Template

Details the approach to build a Cloud Network using CloudFormation Template. The network Consist of VPC, Internet Gateway,Elastic Load balancer, auto scaling, EC2 instance to deploy a highly available web app with access to S3 bucket.

Install Steps:

	1. To create the Network:
	./create.sh stack-name our-infra.yml network-parameters.json
	
	The above step will create a network with a VPC, Public and Private subnet Network, Nat Gateway and Routing Table assigned



	2. To Update the Configuration of the existing network:
	./update.sh stack-name demoservers.yml demoservers.json

	The above step will assign a Internet gateway and bring up a EC2 instance for web application in the private subnet. It also     	 introduces auto scalling to make it highly available and load balancer to balance the load.


[Network Diagram:](Network-Diagram.pdf)


License
Licensed under the [MIT License](LICENSE).
