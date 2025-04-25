variable "bucket_name" {
  description = "Capstone project bucket"
  type        = string
  default     = "myaercapstoneproject-sa20250425"
}

variable "home_page" {
  description = "Name of the website home page."
  type        = string
  default     = "index.html"
}

variable "error_page" {
  description = "Name of the website error page."
  type        = string
  default     = "error.html"
}

variable "tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}
