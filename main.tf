terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "student_profile" {
  filename = "student-profile.txt"
  content  = <<EOF
MZ-UCA CLOUD ACADEMY
Terraform Masterclass Week 2
Student:
${var.student_name}
Course:
${var.course_name}
City:
${var.city}
Academy:
${local.academy}
Instructor:
${local.instructor}
EOF
}

