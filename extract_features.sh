mkdir ffhq
for i in {00000..69999}; do 
	date; 
	echo "$i"; 
	curl -H "Ocp-Apim-Subscription-Key: <Your-Key-Here>" "<Your-Microsoft-Cognitive-Server-Here>/face/v1.0/detect?returnFaceId=true&returnFaceLandmarks=false&returnFaceAttributes=age,gender,headPose,smile,facialHair,glasses,emotion,hair,makeup,occlusion,accessories,blur,exposure,noise" -H "Content-Type: application/json" --data-ascii "{\"url\":\"<Server-With-FFHQ-images>/ffhq/thumbnails128x128/${i}.png\"}" -o ffhq/${i}.json; 
	#sudo zip -ur ffhq_info_small.zip ffhq; 
done
