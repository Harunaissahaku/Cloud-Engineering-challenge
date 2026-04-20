📖 Description

This project provisions a minimal production-style AWS infrastructure using Terraform. It deploys an EC2-based web server behind an Application Load Balancer that returns:

Hello Graylog!

🧱 Architecture

⚙️ Prerequisites
AWS Account
AWS CLI configured
Terraform ≥ 1.5
IAM permissions for VPC, EC2, ALB

description
# 1. Clone repo
git clone https://github.com/your-org/graylog-hello-app-terraform.git
cd graylog-hello-app-terraform

# 2. Initialize Terraform
terraform init

# 3. Validate configuration
terraform validate

# 4. Plan deployment
terraform plan

# 5. Apply infrastructure
terraform apply -auto-approve🌐 Access Application

After deployment:

terraform output alb_dns_name

Open in browser:

http://<alb_dns_name>

Expected output:

Hello Graylog!


Assumptions
Single AZ deployment for simplicity
EC2 uses Amazon Linux 2 AMI
No RDS or caching layer included (kept minimal)
Public subnet used for ALB + EC2 simplicity
HTTP only (no TLS in minimal version)
🧠 Design Choices
ALB used for production realism
Security groups enforce ALB → EC2 traffic only
User-data bootstraps app automatically
Modular Terraform layout for scalability
🔥 Optional Enhancements (Bonus)

If you want to impress reviewers:

Auto Scaling Group instead of single EC2
Multi-AZ subnets
RDS storing message dynamically
CloudWatch logs + alarms
HTTPS via ACM certificate
Remote Terraform state (S3 + DynamoDB locking)
