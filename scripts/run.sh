
#Run the application

sudo chmod -R 775 /home/ubuntu/course-selling-website/myproj


cd /home/ubuntu/course-selling-website
python3 -m venv venv
#source /home/ubuntu/course-selling-website/venv/bin/activate

cd /home/ubuntu/course-selling-website/myproj
pip install wheel
pip install -r requirements.txt

sudo chown ubuntu:ubuntu db.sqlite3



echo "Running the application"
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:8080 > /dev/null 2>&1 &
