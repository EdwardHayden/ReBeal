NAME=$(date +"%m-%d-%y--%H-%M-%S")
echo $NAME
fswebcam -r 1920x1080 -pYUYV -S 5 -D 2 -F 2 /home/ed/ReBeal/ReBeal/"${NAME}.jpg"
git add "${NAME}.jpg"
git commit -m "$NAME"

expect ./send_to_git

#spawn git push origin main
#expect "Username for 'https://github.com': "
#send "EdwardHayden"
#expect "Password for 'https://github.com': "
#send "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"


