# 📚 Week 1: Networking Fundamentals

Welcome to **Week 1** of the **90 Days of DevOps - 2025 Edition**!  
This week, we explored the core of **Networking Fundamentals**, including OSI & TCP/IP models, AWS EC2 Security Groups, and practical Linux networking commands.  

---

## ✅ Task 1: OSI Model (Theory)

### 📌 Introduction
The **OSI Model** is a conceptual framework that standardizes how different systems communicate over a network. It has **7 layers**, each with its own purpose.

### 🔹 OSI Layers

| Layer | Description | Example |
|-------|-------------|---------|
| 1. Physical     | Sends raw data over cables/wireless | Ethernet, Wi-Fi |
| 2. Data Link    | Transfers data between devices | Switch, MAC Address |
| 3. Network      | Routes data across networks | IP, Router |
| 4. Transport    | Ensures reliable delivery | TCP, UDP |
| 5. Session      | Maintains communication sessions | API Calls |
| 6. Presentation | Data formatting & encryption | SSL/TLS |
| 7. Application  | User-facing layer | Browser, Email |

### 🎯 Conclusion
The OSI model helps us understand **how data flows step by step** in a network.

---

## ✅ Task 2: TCP/IP Model (Practical)

### 📌 Introduction
The **TCP/IP Model** is the real-world implementation of networking, used in the **Internet**. It has 4 layers.

### 🔹 TCP/IP Layers

| Layer | Description | Example |
|-------|-------------|---------|
| 1. Application | User applications & protocols | HTTP, DNS, SMTP |
| 2. Transport   | Ensures reliable/unreliable delivery | TCP, UDP |
| 3. Internet    | Logical addressing & routing | IP, ICMP |
| 4. Network Access | Physical data transfer | Ethernet, Wi-Fi |

### 🎯 Conclusion
Unlike the OSI model (theory), **TCP/IP is implemented in real life** and powers the modern internet.

---

## ✅ Task 3: AWS EC2 and Security Groups

### 📌 Introduction
When launching an EC2 instance, **Security Groups (SGs)** act like firewalls. They control inbound (incoming) and outbound (outgoing) traffic.

### 🔹 Step-by-Step

1. **Launch EC2 Instance**
   - AMI: Amazon Linux (Free Tier)
   - Type: `t2.micro`
   - Key Pair: Create or select one
   - Security Group: Create New

2. **Configure Security Group Rules**
   - SSH (22) → My IP
   - HTTP (80) → 0.0.0.0/0
   - HTTPS (443) → 0.0.0.0/0

3. **Connect**
   ```bash
   ssh -i mykey.pem ec2-user@<public-ip>
🔹 Step 5: Testing Security Group Rules
If SSH (22) is open only to your IP → only you can connect.

If HTTP (80) is open → you can access a web server via browser.

Removing HTTP rule → browser cannot reach server.

✅ Best Practices
Always restrict SSH (22) to your IP.
Allow HTTP/HTTPS for public servers.
Never expose databases directly to the internet.
Remember: Security Groups are stateful.

✅ Task 4: Networking Commands Cheat Sheet
📌 Introduction
These Linux commands are the first line of defense when debugging connectivity, DNS, or web services.

🔹 Command Reference
Command	Example	Usage
**ping	ping google.com	Check connectivity
traceroute	traceroute google.com	Trace network path
netstat -tulnp	—	Show listening ports
curl	curl -I http://example.com	Test HTTP requests
dig	dig google.com	DNS lookup
nslookup	nslookup google.com	DNS lookup
ifconfig / ip a	—	Show IP details**

✅ Best Practices
Use ping + traceroute for connectivity issues.
Use netstat to check active services.
Use curl to test HTTP responses.
Prefer dig over nslookup for detailed DNS info.

✅ Task 5: Week 1 Summary
📌 Learnings
**Understood the OSI Model (7 layers) and its role in communication.
Learned the TCP/IP Model (4 layers) and real-world implementation.
Practiced AWS EC2 Instance + Security Group configuration.
Explored Linux networking commands for troubleshooting.**

🎯 Conclusion
Week 1 gave a strong foundation in Networking Basics — essential for any DevOps Engineer 🚀
