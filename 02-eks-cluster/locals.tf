locals {
  bash_user_arn    = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/terraform-user"
  #console_user_arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/terraform-user"
  eks_oidc_url = replace(aws_eks_cluster.this.identity[0].oidc[0].issuer, "https://", "")
}