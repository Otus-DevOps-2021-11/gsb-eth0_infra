variable cloud_id {
  description = "Cloud"
}

variable folder_id {
  description = "Folder"
}

variable zone {
  description = "Zone"
  default     = "ru-central1-a"
}

variable instances {
  description = "Count of instances"
  default     = 1
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
  default     = "~/.ssh/ubuntu.pub"
}

variable private_key_path {
  description = "Path to the private key used for ssh access"
  default     = "~/.ssh/ubuntu"
}

variable image_id {
  description = "Disk image"
}

variable subnet_id {
  description = "Subnet"
}
variable service_account_key_file {
  description = "key.json"
}
