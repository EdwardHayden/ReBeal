NAME=$(date +"%m-%d-%y--%H-%M-%S")
echo $NAME
fswebcam -r 1920x1080 -pYUYV -S 5 -D 2 -F 2 /home/ed/ReBeal/ReBeal/"${NAME}.jpg"
git add "${NAME}.jpg"
git commit -m "$NAME"
git push origin main -v

