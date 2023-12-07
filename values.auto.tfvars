# Generic Variables
windows_ad_join          = true
destination_account_ids = ["522126653536"]
aws_region             = "us-east-1"
host_name              = "motiva-prv-Windows-nonprod"
non_standard_host_name = "hostnamesnow133"
is_non_standard_vm     = false
golden_image_AMI_id    = "ami-0d04e159fb2ecd6c1"
instance_type          = "t3a.medium"
key_name               = "emmanuel-sbx-key"
subnet_id              = "subnet-0410739e57079d6f2"
security_group         = "sg-06fadc7db9825a13b"
root_volume_type       = "gp3"
root_volume_size       = 100
root_iops              = null
root_throughput        = null
iam_instance_profile   = "mot-ec2-ssm-instance-profile-role"
enable_volume_tags     = true
ebs_block_device       = [
  {
    "volume_type" : "gp3",
    "volume_size" : 22,
    "device_name" : "xvdf",
    "encrypted" : true,
    "delete_on_termination" : true,
    "iops" : null,
    "throughput" : null
  },
  {
    "volume_type" : "gp3",
    "volume_size" : 25,
    "device_name" : "xvdg",
    "encrypted" : true,
    "delete_on_termination" : true,
    "iops" : null,
    "throughput" : null
  }
]

# Mandatory tags
class-of-business       = "all"
application-name        = "cloud-platform-aws"
data-classification     = "na"
operating-environment   = "test-1"
security-zone           = "na"
cost-center             = "xxx1234567"
support-group           = "inf-ss-aws-support"
business-impact         = "low"

# Optional Tags
ad_name    = "motiva.prv"
backupplan = "nodailybackup" // candidate values "daily90, daily15, nodailybackup"
patch_group = "nonproduction-rhel8-weekly-patching"
