variable "project_id" {
  type = "string"
}

variable "credentials" {
  description = "Credentials file location"
  type        = "string"
}

variable "filter" {
  description = "filter forStackDriver to PubSub"
  type        = "string"
}
