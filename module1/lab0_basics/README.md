# SEIR Foundations — Module 1, Lab 0 (EC2 Basics)

**Student:** Chris  
**Region:** US East (N. Virginia), `us-east-1`  
**Lab:** Three separate EC2 deployments, connections, and SEIR dashboard verification.

## Required homework evidence — three EC2 deployments

I launched three separate EC2 instances, connected to them, and observed the SEIR Foundations system dashboard. Each screenshot below displays the dashboard together with an EC2 instance ID. The Git Bash screenshots also display the public DNS name used for SSH. The first screenshot shows the public IP in the EC2 Instance Connect UI.

The dates and IDs were cross-checked against **CloudTrail `RunInstances`** events. Matching **`TerminateInstances`** requests were also found for all three instance IDs. These CloudTrail events verify AWS accepted the respective API requests; the current EC2 console shows no instances in `us-east-1`.

| Deployment | Launch date and time (Eastern) | Public IPv4 address | Connection method | Screenshot | Termination request confirmed? |
|---|---|---|---|---|---|
| 1 | Oct 17, 2026, 3:29:10 PM EDT | `100.52.239.130` | EC2 Instance Connect (browser terminal) | [deployment-1.png](screenshots/deployment-1.png) | Yes — Oct 17, 3:53:05 PM EDT |
| 2 | Oct 18, 2026, 6:20:22 PM EDT | `98.81.152.52` | SSH from Windows Git Bash | [deployment-2.png](screenshots/deployment-2.png) | Yes — Oct 18, 6:37:15 PM EDT |
| 3 | Oct 18, 2026, 6:43:56 PM EDT | `3.91.205.248` | SSH from Windows Git Bash | [deployment-3.png](screenshots/deployment-3.png) | Yes — Oct 18, 7:04:57 PM EDT |

### Instance IDs and dashboard details

**Deployment 1** — EC2 instance `i-0905c85743af44699`. I connected through the browser-based EC2 Instance Connect terminal and viewed the **SEIR FOUNDATIONS — Chewbacca Operations Center** dashboard. It displayed the instance ID, uptime of approximately 18 minutes, CPU activity, memory, root-disk usage, and Availability Zone `us-east-1c`. The browser interface showed the public IP `100.52.239.130`. [Screenshot](screenshots/deployment-1.png).

**Deployment 2** — EC2 instance `i-0c43e198604c7a521`. I connected from Windows Git Bash with an SSH command targeting `ec2-98-81-152-52.compute-1.amazonaws.com`. The dashboard appeared after login, showing about 8 minutes of uptime, CPU activity, memory use, root-disk use, and Availability Zone `us-east-1c`. [Screenshot](screenshots/deployment-2.png).

**Deployment 3** — EC2 instance `i-0c845f58c3b047e4d`. I used Git Bash SSH to connect to `ec2-3-91-205-248.compute-1.amazonaws.com`. Its SEIR dashboard showed about 16 minutes of uptime and system health information. This is a different public IP and a different EC2 instance ID from the other two deployments. [Screenshot](screenshots/deployment-3.png).

### What I learned from the SEIR dashboard

- **CPU** shows how much processing capacity the instance is using at the moment.
- **Memory** shows how much RAM is in use compared with the available amount.
- **Disk** shows how much of the instance's root storage is occupied. The screenshots show roughly **1.7 GB used of 8.0 GB** for the lab servers.
- **Uptime** shows how long the Linux server has been running since boot.
- **Instance ID** uniquely identifies the EC2 server, even when different instances have similar names.

Repeating the deployments made it easier to distinguish a launch template from an instance, locate a server's public IP/DNS, and connect with the correct SSH username and key. The browser-based connection and the Git Bash connection are two different ways to reach the same type of EC2 server. I learned to confirm a successful connection by checking the dashboard rather than assuming that a launch was successful just because an EC2 instance appeared in the console.

### Errors and cleanup

When connecting to a newly launched server using Git Bash, SSH prompted me to confirm the server host key; accepting it added the host to `known_hosts`. The local PEM private key was used for authentication but **is not included in the homework repo**.

CloudTrail termination requests are documented for all three instances above. The AWS Console showed **no EC2 instances** in `us-east-1` on November 7, 2026. I retained the saved launch template `SEIR-Lab0-Template`, which was visible in the AWS console with default version 2 on November 7, 2026.

## Additional Week 1 AWS exercises

In addition to the required SEIR dashboard deployments, I completed these AWS and GitHub exercises:

- **GitHub setup:** [course forks screenshot](screenshots/01-github-forks.png).
- **Windows Git Bash SSH practice:** [SSH and Linux command screenshot](screenshots/02-ssh-git-bash.png).
- **EC2 website deployed with Apache:** [home](screenshots/03-website-home.png), [about](screenshots/04-website-about.png), and [JavaScript calculator](screenshots/05-website-calculator.png). The calculator screenshot shows `5 + 7 = 12`.
- **EC2 website startup code:** [user-data.sh](user-data.sh).
- **VPC naming:** [default VPC renamed](screenshots/06-default-vpc-renamed.png) to `SEIR-Default-VPC`.
- **AWS Budgets:** [original budget evidence](screenshots/07-aws-budget.png) and [additional $20 monthly budget evidence](screenshots/17-aws-budget-20usd.png).
- **Further deployment and website proof:** See [ADDITIONAL_EVIDENCE.md](ADDITIONAL_EVIDENCE.md) for additional screenshots, Apache checks, site files, and HTTP 200 verification.

## Evidence provenance and integrity

The three deployment screenshots were recovered from actual October 2026 homework materials and copied without modification to the image pixels. Their **original names** were `Screenshot 2026-10-17 154819.png`, `deployment-1.png.png`, and `deployment-2.png.png`, respectively. They were renamed to match the instructor's requested chronological `deployment-1.png` through `deployment-3.png` layout. CloudTrail records were inspected on November 7, 2026. Public IPv4 addresses were read from the original screenshots and matched to their displayed instance IDs.

**Submission status:** Three unique launches, three public IPs, three connected SEIR dashboards, and matching termination requests have supporting evidence. This README does not claim that CloudTrail alone proves a dashboard ran; those claims are grounded in the actual screenshots.
