resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = "${aws_instance.instance_ec2.availability_zone}"
  size              = 1
  tags = {
    Name = "ebs_volume1"
  }
}

resource "aws_volume_attachment" "instance_ec2-vol" {

  device_name  = "/dev/sdh"
  volume_id    = aws_ebs_volume.ebs_volume.id
  instance_id  = aws_instance.instance_ec2.id
  force_detach = true
}