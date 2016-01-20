echo "delete empty images"


deleteImage()
{
     images="sudo docker images | grep 'none' | awk '{print $3}' | xargs sudo docker rmi"
     echo "Deleting images"
     bash -c "$images"
}

cmd="sudo docker images | grep 'none'"
count=$(bash -c "$cmd")
echo $count
if [ -n "$count"  ]
then
     deleteImage || true
     echo "images deleted"
else
     echo "no empty images found"
fi
