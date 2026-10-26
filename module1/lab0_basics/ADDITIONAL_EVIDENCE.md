# Week 1 AWS - Additional Evidence (October 2026)

This document supplements the existing `Week1-AWS/README.md`, `user-data.sh`, and screenshots `01`–`07` already committed to this repository. It does **not** replace the original evidence.

## AWS EC2 website deployment verification

- [Deployment 3 - running EC2 instance](screenshots/08-ec2-deployment-3-running.png)
- [EC2 SSH client connection configuration](screenshots/09-ssh-client-settings.png) (AWS console instructions, **not** the required Git Bash SSH screenshot)
- [EC2 Instance Connect browser shell](screenshots/10-ec2-instance-connect-browser.png) (additional verification only)
- [Apache HTTP server active](screenshots/11-apache-service-active.png)
- [Website files in /var/www/html](screenshots/12-website-files.png)
- [Local HTTP/1.1 200 OK](screenshots/13-http-200-response.png)

The required Windows Git Bash SSH connection screenshot is in [screenshots/02-ssh-git-bash.png](screenshots/02-ssh-git-bash.png). The original three website screenshots are also retained in screenshots `03`–`05`.

## Additional environment evidence

- [Earlier EC2 instance SuhiSat at 2/3 passing status checks](screenshots/14-previous-ec2-instance-suhisat-2of3-checks.png) (partial status only; does not prove all health checks passed)
- [Default VPC rename confirmed](screenshots/15-vpc-rename-success.png)
- [EC2 console showing no instances in the selected region on October 18](screenshots/16-ec2-no-instances-region-oct18.png) (historical snapshot; not proof of termination on October 21)
- [Newly created $20 monthly cost budget](screenshots/17-aws-budget-20usd.png) (`Class8-Week1-Budget-20USD`), which meets the assignment's **at most $20** requirement.

## Notes

- Instance health and webpage verification are documented. The second deployment's final pass/termination state is **not independently verified** by these screenshots.
- AWS Budget health status is not the same as monthly spending being below the configured threshold.
- Some screenshots include public identifiers and IP addresses; do not upload private PEM keys, secrets, AWS access keys, or authentication tokens.
- The HTTP website used for the class lab should not be considered production-secure.
