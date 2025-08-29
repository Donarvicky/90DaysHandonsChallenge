# 🌐 Week 1: Networking Fundamentals

This week’s focus was **Networking Basics** – the foundation for all DevOps engineers.  
Here’s what I covered 👇  

---

## 1️⃣ OSI & TCP/IP Models

### OSI Model (7 Layers)
1. **Physical** – Raw data transmission (Cables/Wi-Fi)  
2. **Data Link** – Device-to-device transfer (MAC, Ethernet)  
3. **Network** – Logical addressing & routing (IP)  
4. **Transport** – Reliable/unreliable delivery (TCP/UDP)  
5. **Session** – Manages sessions (APIs, SSH login)  
6. **Presentation** – Data encryption & formatting (SSL/TLS)  
7. **Application** – User-facing apps (HTTP, DNS, SMTP)  

### TCP/IP Model (4 Layers)
1. **Application** – Browsers, Emails, DNS  
2. **Transport** – TCP/UDP for communication  
3. **Internet** – IP addressing & routing  
4. **Network Access** – Ethernet, Wi-Fi  

---

## 2️⃣ Protocols & Ports for DevOps

| Protocol | Port | Description |
|----------|------|-------------|
| HTTP     | 80   | Unsecure web traffic |
| HTTPS    | 443  | Secure web traffic |
| SSH      | 22   | Remote secure access |
| FTP      | 21   | File transfer |
| DNS      | 53   | Domain resolution |
| SMTP     | 25   | Email transfer |
| MySQL    | 3306 | Database access |
| PostgreSQL | 5432 | Database access |

---

## 3️⃣ AWS EC2 & Security Groups

Steps I followed:  
1. Launched EC2 (Amazon Linux 2, Free Tier `t2.micro`)  
2. Configured Security Groups:  
   - SSH (22) → My IP only  
   - HTTP (80) → Anywhere  
   - HTTPS (443) → Anywhere  
3. Connected via SSH:

## 4️⃣ Networking Commands Cheat Sheet
Command	Example	Usage
ping	ping google.com	Check connectivity
traceroute	traceroute google.com	Trace route to host
netstat -tulnp	—	Show listening ports
curl	curl -I http://example.com	Send HTTP request
dig	dig google.com	DNS lookup
nslookup	nslookup google.com	DNS lookup
✅ Week 1 Summary

Understood OSI & TCP/IP models

Documented DevOps-relevant protocols & ports

Practiced AWS EC2 + Security Groups

Hands-on with essential networking commands

📖 Part of my #90DaysOfDevOps 2025 Journey 🚀
Stay tuned for Week 2!
   ```bash
   ssh -i mykey.pem ec2-user@<EC2-Public-IP>
