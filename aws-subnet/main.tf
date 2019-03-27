
resource "aws_subnet" "subnet" {
  vpc_id            = "${var.vpc-id}"
  cidr_block        = "${var.cidr-block}"
  availability_zone = "${var.availability-zone}"

  tags {
    Name        = "${var.name}"
    Environment = "${var.environment}"
    Project     = "${var.project}"
  }
}