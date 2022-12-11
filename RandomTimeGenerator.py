#Random Time Generator
from random import randint
from crontab import CronTab

cron = CronTab(user = "ed")

hour = randint(18, 25)

if hour >= 24:
	hour = hour-24

minute = randint(0, 59)

second = randint(0, 59)

print (str(hour)+":"+str(minute)+":"+str(second))

job = cron.find_command("/home/ed/ReBeal/ReBeal/i_wanna_take_a_pic.sh")
job.hour.on(hour)
job.minute.on(minute)
job.second.on(second)
cron.write()
