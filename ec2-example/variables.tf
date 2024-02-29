variable "ami_id" {
  description = "this is an amazon image id"

  default = "ami-0440d3b780d96b29d"
}

variable "tags" {
  type = map(string)
  default = {
    "name" = "ericngigi's ec2"
  }
}
