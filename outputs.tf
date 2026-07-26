output "created_file" {
  value = local_file.student_profile.filename
}
output "academy" {
  value = local.academy
}
output "student" {
  value = var.student_name
}

