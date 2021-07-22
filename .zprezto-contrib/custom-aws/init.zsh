# Return if requirements are not found.
if (( ! $+commands[aws] )); then
  return 1
fi

# EC2一覧を見るための関数
# 第一引数にprofileを取る。無かった場合はdefaultプロファイルになる。
show-ec2 () {
  profile=$1
  if [ -z "$profile" ]; then
    profile="default"
  fi

  aws ec2 describe-instances \
      --profile $profile \
      --filter "Name=instance-state-name,Values=running" \
      --query "sort_by(Reservations[].Instances[].{no1_Name: Tags[?Key==\`Name\`].Value|[0] , no2_InstanceId: InstanceId, no3_PrivateIp: PrivateIpAddress, no4_Type: InstanceType}, &no1_Name)" \
      --output table
}
