#Subnets
resource "aws_subnet" "dmz1" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "${var.vpc.subnet_dmz1_cidr}"
  availability_zone = "${var.a_zones.zone_a}"

  tags {
    Name = "DMZ"
  }
}

resource "aws_subnet" "dmz2" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "${var.vpc.subnet_dmz2_cidr}"
    availability_zone = "${var.a_zones.zone_c}"

  tags {
    Name = "DMZ"
  }
}

resource "aws_subnet" "app1" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "${var.vpc.subnet_app1_cidr}"
  availability_zone = "${var.a_zones.zone_a}"

  tags {
    Name = "APP"
  }
}

resource "aws_subnet" "app2" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "${var.vpc.subnet_app2_cidr}"
  availability_zone = "${var.a_zones.zone_c}"

  tags {
    Name = "APP"
  }
}
