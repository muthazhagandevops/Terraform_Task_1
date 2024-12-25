provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
}

provider "aws" {
  alias  = "us_west_1"
  region = "us-west-1"
}


resource "aws_instance" "instance_us_east_1" {
  provider      = aws.us_east_1
  ami           = "ami-07e2ef047c3e75ca1"  
  instance_type = "t2.micro"

  tags = {
    Name = "Instance in US East 1"
  }
}

resource "aws_instance" "instance_us_west_1" {
  provider      = aws.us_west_1
  ami           = "ami-0aa117785d1c1bfe5"  
  instance_type = "t2.micro"

  tags = {
    Name = "Instance in US West 1"
  }
}
