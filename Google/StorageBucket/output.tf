output "bucket_name" {
  description = "The name of the bucket"
  value       = "${module.Storage.name}"
}