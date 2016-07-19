# Route Tables
# DMZ
resource "aws_route_table" "route_dmz" {
    vpc_id = "${aws_vpc.main.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.igw.id}"
    }
    tags {
        Name = "route_dmz"
    }
}
resource "aws_route_table_association" "route_dmz1_assoc" {
    subnet_id = "${aws_subnet.dmz1.id}"
    route_table_id = "${aws_route_table.route_dmz.id}"
}

resource "aws_route_table_association" "route_dmz2_assoc" {
    subnet_id = "${aws_subnet.dmz2.id}"
    route_table_id = "${aws_route_table.route_dmz.id}"
}

# AP
resource "aws_route_table" "route_app" {
    vpc_id = "${aws_vpc.main.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.igw.id}"
    }
    tags {
        Name = "route_app"
    }
}

resource "aws_route_table_association" "route_app1_assoc" {
    subnet_id = "${aws_subnet.app1.id}"
    route_table_id = "${aws_route_table.route_app.id}"
}

resource "aws_route_table_association" "route_app2_assoc" {
    subnet_id = "${aws_subnet.app2.id}"
    route_table_id = "${aws_route_table.route_app.id}"
}
