# 🚀 Automated System Health Monitor

A simple automated DevOps pipeline to monitor system health and analyze logs. 

## 🛠️ Tech Stack
* **Bash Scripting:** Extracts real-time system stats (RAM, Disk, Internet).
* **Linux Cron Jobs:** Automates the script execution in the background.
* **Python:** Parses and filters the generated log data for backend/AI use.
* **Git & GitHub:** Version control and remote repository management.

## ⚙️ How it works
1. The Bash script runs automatically using Cron.
2. Health logs are appended to `health_log.txt`.
3. The Python analyzer reads the log file and extracts the latest memory metrics.
4. The extracted metrics can now be seamlessly integrated into dashboards or AI models.
