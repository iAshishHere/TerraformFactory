resource "google_storage_bucket" "bucket" {
  count = "${length(var.names)}"
  name     = "${element(var.names, count.index)}"
  location = "${element(var.locations, count.index)}"
  storage_class  = "${element(var.storage_classes, count.index)}"  
}

#   lifecycle_rule {
#     action {
#       type = "SetStorageClass"
#       storage_class = "COLDLINE"
#     }
#     condition{
#       age = 10
#     }
#   }