#-----storage/outputs.tf-----

output "BucketName" {
  value = "${module.storage.bucketname}"
}
