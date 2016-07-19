# Internet Gateway
resource "aws_internet_gateway" "igw" {
    vpc_id = "${aws_vpc.main.id}"
    tags {
        Name = "IGW"
    }
}

# S3 Endpoint
resource "aws_vpc_endpoint" "s3endpoint" {
    vpc_id = "${aws_vpc.main.id}"
    service_name = "com.amazonaws.ap-northeast-1.s3"
    route_table_ids = [
        "${aws_route_table.route_app.id}",
        "${aws_route_table.route_dmz.id}"
    ]
    policy = <<POLICY
{
    "Statement": [
        {
            "Action": "*",
            "Effect": "Allow",
            "Resource": "*",
            "Principal": "*"
        }
    ]
}
POLICY
}

