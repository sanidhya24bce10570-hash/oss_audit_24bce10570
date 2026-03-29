Open Source Audit: MySQL
Student Information
Name: Sanidhya Porwal
Registration Number: 24BCE10570
Focus Area: MySQL (Relational Database Management)

What's This All About?
Honestly, when I first started looking into MySQL, I didn't expect to find such a rich story behind what most people think of as "just a database." MySQL is one of those rare open-source projects that's been around long enough to have a real history — drama, acquisitions, community debates, and all. This audit is my attempt to peel back the layers: where it came from, how it makes money without betraying its open-source roots, how it fits into the Linux world, and how it stacks up against Oracle Database, its biggest proprietary competitor.

The Scripts I Built
To make this audit actually useful (and not just a wall of text), I wrote five Bash scripts. Each one tackles a different piece of the puzzle. Here's what they do in plain English:
Script 1 — System Identity Report
Think of this as asking your machine, "Who are you?" Before auditing any software, it makes sense to understand the environment it's living in. This script pulls up your kernel version, who's logged in, how long the system's been running, and which open-source license is protecting the OS. It's the starting point.
Script 2 — FOSS Package Inspector
This one answers the most basic question: Is MySQL actually installed here? It checks the installation, pulls the version info, and then does something a little fun — it has an interactive section powered by a case statement that walks you through MySQL's core philosophy. It's part tool, part conversation.
Script 3 — Disk & Permission Auditor
Security tends to be an afterthought until something goes wrong. This script loops through the important system paths and MySQL's config folders, checking who owns what, what the group permissions look like, and how much disk space everything is occupying. Simple, but surprisingly eye-opening.
Script 4 — Smart Log Analyzer
Nobody actually reads every single line of a log file — there are thousands of them. This script does the heavy lifting: you point it at a log, tell it what keyword to hunt for (like "error" or "warning"), and it counts the hits and surfaces the last five occurrences. It's the kind of thing a real DBA would want on a bad day.
Script 5 — Open Source Manifesto Generator
This one's a bit different. It asks you three questions about how you feel about software freedom, and based on your answers, it writes you a personalized manifesto and saves it as a .txt file. A little creative, but it makes the philosophy of open source feel personal rather than abstract.

How to Run the Scripts
It's a two-step process — nothing complicated:
Step 1 — Give it permission to run:
bashchmod +x script.sh
Step 2 — Execute it:
bash./script.sh
Quick reference for running each script:
bash./script1.sh                        # System Identity Report
./script2.sh                        # FOSS Package Inspector
./script4.sh /var/log/syslog error  # Log Analyzer (path + keyword)

Final Thoughts
What surprised me most doing this audit is how MySQL isn't really just software — it's a kind of statement. The fact that it powers everything from a personal WordPress blog to the backend infrastructure of Facebook and Wikipedia says something about what open-source can actually achieve when it's done right.
The dual-licensing model is clever. It's not perfect, and it's sparked plenty of debate in the community, but it shows that you don't have to choose between being free and being financially sustainable. MySQL has managed to be both, and that balance is what makes it worth studying.
