# Terraform Files for Two-Tier Architecture in AWS

This repository contains Terraform configuration files for provisioning a two-tier architecture in AWS. The two-tier architecture typically consists of a front-end web server tier and a back-end database tier. With these Terraform files, you can efficiently deploy and manage the infrastructure required for your application.

## Files Overview

- **provider.tf**: This Terraform configuration file specifies the AWS provider and its corresponding plugin that Terraform will use to manage resources in AWS.

- **network_resource.tf**: This file contains the configuration for the network infrastructure required for your application to function properly. It includes the definition of VPC, subnets, route tables, and other networking components.

- **security_resources.tf**: Responsible for configuring the security measures for your application, this file defines security groups for both EC2 instances and load balancers. It ensures that only authorized traffic can access your application resources.

- **ec2_resources.tf**: This Terraform configuration file defines the resources required to provision EC2 instances in your AWS environment. It typically includes the configuration of two EC2 instances, each with an NGINX web server installed. Additionally, it allocates two Elastic IPs for those instances to ensure static IP addresses.

- **db_resources.tf**: Terraform is responsible for configuring the resources required to provision an RDS database in your AWS environment. This file typically includes the configuration of a MySQL RDS database, including the definition of the database instance class, allocated storage, and the desired backup window.

## Getting Started

To use these Terraform files, follow these steps:

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/ErikNgigi/terraform-projects.git
    ```

2. Navigate to the project directory:

    ```bash
    cd terraform-projects/two-tier-architecture
    ```

3. Update the Terraform configuration files as needed, such as specifying AWS region, instance types, database configurations, etc.

4. Initialize Terraform:

    ```bash
    terraform init
    ```

5. Review the execution plan to ensure that Terraform will create the desired infrastructure:

    ```bash
    terraform plan
    ```

6. Apply the Terraform configuration to provision the infrastructure:

    ```bash
    terraform apply
    ```

7. Once Terraform completes the provisioning process, verify that the infrastructure has been successfully deployed in your AWS account.

## Cost Breakdown

The cost breakdown of the architecture was generated using Infracost. Infracost is a tool used to estimate and breakdown the cost of infrastructure as code (IAC) projects. It provides insights into the cost implications of the infrastructure you're provisioning, helping you make informed decisions about resource allocation and optimization.

To use Infracost, install it and run the command:

```bash
infracost breakdown --path .
```

## Contributing

Contributions to this project are welcome! If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Thank you for using these Terraform files for provisioning a two-tier architecture in AWS. If you have any questions or need further assistance, don't hesitate to reach out.
