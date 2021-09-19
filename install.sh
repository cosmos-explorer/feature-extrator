docker stop fe
docker rm fe
docker build -t feature-extractor .
docker run -d --name fe -v d:/repo/share:/var/www/app/datadir -p 9999:8888 -p 9000:80 -p 5000:5000 feature-extractor
# run ipython notebook in dettached mode, this line should be commented in production environment
docker exec -d -it fe bash -c "/run_jupyter.sh"
# upgrade scikit-learn in the container
#docker exec -it fe bash -c "sudo pip install --upgrade pip"
#docker exec -it fe bash -c "sudo pip install --upgrade scikit-learn"

# retrain inception 3 on flower_photos
# docker exec -it fe bash -c "cd ~ && curl -O http://download.tensorflow.org/example_images/flower_photos.tgz && tar xzf flower_photos.tgz"