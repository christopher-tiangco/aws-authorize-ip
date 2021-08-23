# aws-authorize-ip
Simple Bash script to authorize a given IP address / port to a target AWS security group. In other words, a quick way to add an entry to the **Inbound Rules** of a given security group

### Prerequisites
- Valid AWS Account and authorized access to a VPC Security Group
- AWS CLI with configuration already set to the AWS account

### Usage
- In a terminal (e.g. Bash), open the file `aws-authorize-ip.sh` and set the `AWS_REGION` (default is `us-west-2`) and `SECURITY_GROUP_ID`
- Run the following
```
./aws-authorize-ip.sh <ip_address_to_authorize> <port>
```
