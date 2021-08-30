variable "file_system_id" {
    description = " (Required) The ID of the file system for which the access point is intended."
    default = null
}

variable "posix_user" {
    description = "(Optional) The operating system user and group applied to all file system requests made using the access point. See Posix User below."
    default = null
}

variable "root_directory" {
    description = "(Optional) Specifies the directory on the Amazon EFS file system that the access point provides access to. See Root Directory below."
    default = null
}

variable "creation_info" {
    description = "(Optional) Specifies the POSIX IDs and permissions to apply to the access point's Root Directory. See Creation Info below."
    default = null
}

variable "tags" {
    description = "(Optional) A map of tags to assign to the file system."
    default = null
}
