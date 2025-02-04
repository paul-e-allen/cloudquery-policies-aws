SELECT
    arn
FROM
    aws_ec2_security_groups
    LEFT JOIN
        aws_ec2_instance_network_interface_groups ON
            aws_ec2_security_groups.id = aws_ec2_instance_network_interface_groups.group_id
WHERE
    aws_ec2_instance_network_interface_groups.cq_id IS NULL
