# Terraform Workshop 1

- Deploy a docker container using Terraform 
- Create dev, stage, and production environments
- Create a local module to adhere to DRY principles
- Refactor code with Terragrunt

*Prerequisites*

1. Docker
2. Terraform 1.5.x
3. Terragrunt

## infrastructure-live-v1
This is a single environment setup.
All values are hard-coded.

## infrastructure-live-v2
This is a multi-environment setup.
We use variables to avoid having to hard-coded the environment in the code.

## infrastructure-live-v3
This is a multi-environment setup.
We use modules to avoid having to repeat code.


## infrastructure-live-v4
This is a multi-environment setup.
We use modules to avoid having to repeat code.
Additionally, we use Terragrunt to avoid repeating provider and backend code.

## Acknowledgement
This is based off of the video [Terragrunt Tutorial: Create VPC, EKS from Scratch!](https://youtu.be/yduHaOj3XMg?si=Vu2ZX0Q4TyOA2ITS) from Anton Putra.
