if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/rohanbhai27/Rnp-Auto-Filter-V5.git /Rnp-Auto-Filter-V5
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Rnp-Auto-Filter-V5
fi
cd /Rnp-Auto-Filter-V5
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
