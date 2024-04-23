output "username" {
  value = aws_iam_user.iam_user.name
}

output "access_key_id_prev" {
  value = ""
}

output "secret_access_key_prev" {
  value = ""
}

output "access_key_id_curr" {
  value     = aws_iam_access_key.iam_access_key.id
  sensitive = true
}

output "secret_access_key_curr" {
  value     = aws_iam_access_key.iam_access_key.secret
  sensitive = true
}
