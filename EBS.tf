#Application creation
resource "aws_elastic_beanstalk_application" "healthApp" {
  name        = "healthApp"
  description = "Elastic Beanstalk Application."
}

#Environment creation
resource "aws_elastic_beanstalk_environment" "healthApp_Environment" {
  name                = "healthApp"
  application         = aws_elastic_beanstalk_application.healthApp.name
  solution_stack_name = "64bit Amazon Linux 2015.03 v2.0.3 running Go 1.4"
}
