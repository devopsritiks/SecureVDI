# Setup Instructions

1. **Clone Repo**: `git clone https://github.com/devopsritiks/SecureVDI.git`
2. **Install Tools**: Terraform, Docker, Helm, Ansible, AWS CLI.
3. **AWS Config**: `aws configure`
4. **Run Pipeline**: Trigger Jenkins or run `Jenkinsfile` stages manually.
5. **Access**:
   - VDI Manager: `http://<loadbalancer>:5000`
   - VDI Desktop: `vnc://<loadbalancer>:5901` (password: `password`)
6. **Cleanup**: `terraform destroy`
