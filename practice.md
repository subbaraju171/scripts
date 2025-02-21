**real-world SRE scripting problems** to practice. These problems will test your ability to **automate, monitor, and debug systems**—things you might encounter in the interview.  

---

## **🛠 Practice Problems for SRE Bash Scripting**

### **📝 1. Log Parsing and Analysis**  
👉 **Problem:** Given a log file `/var/log/syslog`, write a script to:  
1. Count the number of occurrences of the word **"error"** (case-insensitive).  
2. Extract the top 5 most common error messages.  

💡 **Hint:** Use `grep`, `awk`, and `sort`.  

📌 **Example:**  
```bash
#!/bin/bash
LOG_FILE="/var/log/syslog"

# Count "error" occurrences
echo "Total Errors: $(grep -i 'error' $LOG_FILE | wc -l)"

# Top 5 most common errors
grep -i 'error' $LOG_FILE | awk '{print $5}' | sort | uniq -c | sort -nr | head -5
```

---

### **💻 2. Check If a Service is Running and Restart If Not**  
👉 **Problem:** Write a script to:  
1. Check if **nginx** is running.  
2. If it’s not running, restart it and log the restart time.  

💡 **Hint:** Use `systemctl`, `ps aux`, or `pgrep`.  

📌 **Example:**  
```bash
#!/bin/bash
SERVICE="nginx"

if ! systemctl is-active --quiet $SERVICE; then
    echo "$(date) - $SERVICE was down. Restarting..." >> /var/log/service_monitor.log
    systemctl restart $SERVICE
    echo "Service restarted!"
else
    echo "$SERVICE is running fine."
fi
```

---

### **🌎 3. Find Open Ports on a Server**  
👉 **Problem:** Write a script to list all open TCP ports on a server.  

💡 **Hint:** Use `netstat` or `ss`.  

📌 **Example:**  
```bash
#!/bin/bash
echo "Open TCP ports:"
netstat -tlnp | awk 'NR>2 {print $4}' | cut -d':' -f2 | sort -n | uniq
```

---

### **📡 4. Ping a List of Servers and Report Status**  
👉 **Problem:** Write a script that:  
1. Reads a file `servers.txt` containing one hostname per line.  
2. Pings each server.  
3. Logs whether it's **up or down**.  

💡 **Hint:** Use `ping -c 2` and `grep`.  

📌 **Example:**  
```bash
#!/bin/bash
INPUT_FILE="servers.txt"

while read -r server; do
    if ping -c 2 "$server" &> /dev/null; then
        echo "$server is UP"
    else
        echo "$server is DOWN"
    fi
done < "$INPUT_FILE"
```

---

### **🗑 5. Delete Old Files from a Directory (Automation Task)**  
👉 **Problem:** Write a script that:  
1. Deletes all `.log` files **older than 7 days** from `/var/log/app`.  
2. Logs the deleted files to `/var/log/deleted_files.log`.  

💡 **Hint:** Use `find` with `-mtime`.  

📌 **Example:**  
```bash
#!/bin/bash
LOG_DIR="/var/log/app"
LOG_FILE="/var/log/deleted_files.log"

find $LOG_DIR -name "*.log" -type f -mtime +7 -exec echo "Deleting: {}" >> $LOG_FILE \; -exec rm {} \;
echo "Cleanup completed!"
```

---

### **🚀 6. Monitor CPU and Alert If It Exceeds a Threshold**  
👉 **Problem:** Write a script that:  
1. Checks the **current CPU usage**.  
2. If CPU usage exceeds **80%**, send an alert.  

💡 **Hint:** Use `top` or `mpstat`.  

📌 **Example:**  
```bash
#!/bin/bash
THRESHOLD=80
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d'.' -f1)

if [ "$CPU_USAGE" -gt "$THRESHOLD" ]; then
    echo "ALERT: High CPU Usage - $CPU_USAGE%" | mail -s "High CPU Alert" your@email.com
else
    echo "CPU usage is normal: $CPU_USAGE%"
fi
```

---

### **🔍 7. Extract Unique IP Addresses from a Log File**  
👉 **Problem:** Given a log file (`access.log`), extract all unique IP addresses.  

💡 **Hint:** Use `awk` and `sort`.  

📌 **Example:**  
```bash
#!/bin/bash
LOG_FILE="access.log"

awk '{print $1}' $LOG_FILE | sort | uniq
```

---

### **📤 8. Upload a File to S3 (if AWS CLI is installed)**  
👉 **Problem:** Write a script to upload a file to an **S3 bucket**.  

💡 **Hint:** Use `aws s3 cp`.  

📌 **Example:**  
```bash
#!/bin/bash
FILE_TO_UPLOAD="/path/to/file.txt"
BUCKET_NAME="your-bucket-name"

aws s3 cp $FILE_TO_UPLOAD s3://$BUCKET_NAME/
echo "File uploaded!"
```

---

## **🚀 Final Tips for Interview:**
1️⃣ **Write clean, modular scripts**  
2️⃣ **Explain your logic** while coding  
3️⃣ **Practice handling errors** (use `set -e` and `trap`)  
4️⃣ **Think of scalability** (e.g., what if logs are 10GB?)  
5️⃣ **Be ready for optimizations** (e.g., `awk` vs. `sed` for efficiency)  

---

### **📌 Next Steps:**  
✅ Try solving each problem on your machine  
✅ Modify scripts to fit different cases (e.g., add log rotation, retries)  
✅ Run a **mock session on CoderPad or an online Bash compiler**  
