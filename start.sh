if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/LionKetty-UD/Mother-earth-bot.git /Mother-earth-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Mother-earth-bot
fi
cd /Mother-earth-bot
pip3 install -U -r requirements.txt
echo "Starting Mother-earth-bot...."
python3 bot.py
