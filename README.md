# Terraform Script for AWS Databricks Workspace Creation

This Terraform script automates the creation of an AWS Databricks workspace along with necessary AWS resources like S3 buckets, IAM roles, VPC configuration, and more. It leverages the Databricks provider and AWS provider.

## Prerequisites

Before running this Terraform script, make sure you have:

- Terraform installed on your system.
- AWS credentials configured with appropriate permissions.
- Databricks account credentials.

## Usage

1. Clone this repository:

   ```bash
   git clone <repository_url>
   ```

2. Navigate to the directory containing `main.tf`:

   ```bash
   cd <directory_name>
   ```

3. Initialize Terraform:

   ```bash
   terraform init
   ```

4. Modify `variables.tf` to provide values for variables like `region`, `databricks_account_username`, `databricks_account_password`, and `databricks_account_id`.

5. Optionally, modify the S3 bucket names and other configurations in `main.tf` as per your requirements.

6. Review the IAM policies in the `Policy` directory to ensure they meet your security and access control requirements.

7. Execute the Terraform script to create the resources:

   ```bash
   terraform apply
   ```

   You may be prompted to confirm the planned actions before proceeding. Type `yes` to continue.

8. After successful execution, Terraform will output the Databricks instance profile ARN, Databricks workspace host URL, and sensitive token. Ensure to securely store the token.

## Outputs

- **Databricks Instance Profile:** The ARN of the IAM instance profile created for data ingestion.
- **Databricks Host:** The URL of the Databricks workspace.
- **Databricks Token:** The authentication token for accessing the Databricks workspace.

## Additional Notes

- Ensure to destroy resources when they are no longer needed by running:

  ```bash
  terraform destroy
  ```

- Refer to the official Terraform documentation for more information on managing infrastructure with Terraform.

```

Feel free to adjust the instructions and details based on your specific requirements and environment.
