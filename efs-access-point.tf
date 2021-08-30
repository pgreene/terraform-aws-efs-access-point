resource "aws_efs_access_point" "general" {
  file_system_id = var.file_system_id
  tags = var.tags
  dynamic "posix_user" {
    for_each = var.posix_user == null ? [] : [var.posix_user]
    content {
      gid = posix_user.value.gid
      uid = posix_user.value.uid
      #secondary_gids = posix_user.value.secondary_gids
    }
  }
  dynamic "root_directory" {
    for_each = var.root_directory == null ? [] : [var.root_directory]
    content {
      path = root_directory.value.path
      dynamic "creation_info" {
        for_each = var.creation_info == null ? [] : [var.creation_info]
        content {
          owner_gid = creation_info.value.owner_gid
          owner_uid = creation_info.value.owner_uid
          permissions = creation_info.value.permissions
        }
      } 
    }
  }
}