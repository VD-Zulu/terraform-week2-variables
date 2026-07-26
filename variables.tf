variable "student_name" {
  type = string
}

variable "course_name" {
  type = string
}

variable "city" {
  type    = string
  default = "Johannesburg"
}

variable "username" {
  type = string
  validation {
    condition     = length(var.username) > 3
    error_message = "Username must be longer than 3 characters."
  }
}

variable "password" {
  type      = string
  sensitive = true
}

