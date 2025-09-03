📘 Week 1: Networking Fundamentals – 90 Days of DevOps 🚀

Welcome to Week 1 of the 90 Days of DevOps – 2025 Edition!
This week we focus on Networking basics that every DevOps engineer must know.

✅ Task 1: OSI Model
Introduction

The OSI (Open Systems Interconnection) model is a conceptual framework that describes how data moves across networks. It has 7 layers, each responsible for specific tasks.

The 7 Layers of OSI

Physical Layer → Wires, cables, Wi-Fi.

Data Link Layer → MAC address, Ethernet.

Network Layer → IP addressing, routing.

Transport Layer → Reliable delivery (TCP/UDP).

Session Layer → Manage sessions (start, maintain, end).

Presentation Layer → Data encryption, compression.

Application Layer → User-facing (HTTP, FTP, DNS).

Example

If a web page is not loading:

Check Physical Layer → Cable/connection issue?

Check Network Layer → Wrong IP or routing?

Check Application Layer → Server issue?

Best Practices

Troubleshoot bottom-to-top.

Use mnemonics → All People Seem To Need Data Processing.

Conclusion

The OSI model is a troubleshooting roadmap for network engineers.

✅ Task 2: TCP/IP Model
Introduction

The TCP/IP model is the practical networking model used on the internet. It has 4 layers.

The 4 Layers

Network Interface → Ethernet, Wi-Fi.

Internet → IP addressing, routing.

Transport → TCP/UDP protocols.

Application → HTTP, DNS, SSH.

Example

When opening google.com:

Application Layer → Browser sends HTTP request.

Transport Layer → TCP splits data.

Internet Layer → IP finds route.

Network Layer → Data sent physically.

Testing
curl google.com

Best Practices

Use TCP when reliability matters.

Use UDP when speed matters.

Conclusion

TCP/IP is the foundation of the internet.

✅ Task 3: Networking Protocols & Ports
Introduction

Protocols are rules of communication. Ports are doors for services.

Common Protocols & Ports

SSH (22) → Remote login.

HTTP (80) → Web traffic.

HTTPS (443) → Secure web.

FTP (21) → File transfers.

DNS (53) → Domain lookup.

SMTP (25/587) → Email.

MySQL (3306) → Database.

Testing Ports
nc -zv <server-ip> 22
netstat -tulnp

Best Practices

Open only required ports.

Use firewall/security groups.

Prefer HTTPS over HTTP.

Conclusion

Protocols + Ports = Communication backbone of networks.

✅ Task 4: Networking Commands Cheat Sheet
Command	Example	Usage
ping	ping google.com	Check connectivity
traceroute	traceroute google.com	Trace network path
netstat -tulnp	—	Show listening ports
curl	curl -I http://example.com	Test HTTP requests
dig	dig google.com	DNS lookup
nslookup	nslookup google.com	DNS lookup
ifconfig / ip a	—	Show IP details
Best Practices

Use ping + traceroute for connectivity issues.

Use netstat to see what’s running.

Use curl to debug web apps.

✅ Task 5: AWS EC2 & Security Groups
Introduction

When you launch an AWS EC2 instance, you need a Security Group (SG) to control who can access your server and on which ports.

Step 1: Launch EC2 Instance

AWS Console → EC2 → Launch Instance.

Name: my-first-ec2.

AMI: Amazon Linux (Free Tier).

Type: t2.micro.

Create/Select key pair (for SSH).

Configure Security Group.

Step 2: Security Group Basics

Inbound rules → Who can connect to EC2.

Outbound rules → Where EC2 can connect out.

Default:

Inbound = empty (no one can connect).

Outbound = all allowed (EC2 can reach internet).

Step 3: Add Rules

SSH (22) → Allow My IP.

HTTP (80) → Allow 0.0.0.0/0.

HTTPS (443) → Allow 0.0.0.0/0.

Step 4: Connect
ssh -i mykey.pem ec2-user@<public-ip>

Step 5: Testing Rules

If SSH → only your IP can connect.

If HTTP open → everyone can view webserver.

Remove HTTP rule → server not reachable on port 80.

Best Practices

Never open SSH (22) to 0.0.0.0/0.

Open HTTP/HTTPS for websites.

Keep DB ports private.

Conclusion

Security Groups = firewall for your EC2. Always allow only what’s required.

🎯 Week 1 Summary

✅ Understood OSI & TCP/IP models.

✅ Learned Protocols & Ports.

✅ Practiced Networking Commands.

✅ Launched EC2 with Security Groups.

📖 Part of my #90DaysOfDevOps 2025 Journey 🚀
Stay tuned for Week 2!

