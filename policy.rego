# METADATA
# title: Bad buckets are bad
# description: Bad buckets are bad because they are not good.
# scope: package
# custom:
#   avd_id: AVD-TEST-0123
#   severity: CRITICAL
#   short_code: very-bad-misconfig
#   recommended_action: "Fix the s3 bucket"

package user.foobar.ABC001

deny[cause] {
	bucket := input.aws.s3.buckets[_]
	bucket.name.value == "evil"
	cause := sprintf("%v", [bucket])
}

## below is the rule for volume

# deny[cause] {
# 	volume := input.aws.ec2.volumes[_]
# 	volume.count.value == 1
# 	cause := sprintf("%v", [volume])
# }

## below is to get the input received for volume

# deny[cause] {
# 	volume := input.aws.ec2.volumes[_]
# 	cause := sprintf("%v", [volume])
# }

## below is to get the input entirely

# deny[cause] {
# 	volume := input
# 	cause := sprintf("%v", [volume])
# }
