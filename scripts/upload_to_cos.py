from packages import object_storage as object_storage
import time
import shutil
import os

api_key = os.environ.get("API_KEY","")
cos_service_crn = os.environ.get("COS_SERVICE_CRN","")
endpoint = os.environ.get("ENDPOINT","")
bucket_name = os.environ.get("BUCKET","")

path = os.environ.get("PATH","")

if os.path.isdir(path):

	foldername = os.path.basename(path)
	zip_file_name = str(foldername + "_" + time.strftime("%y%m%d%S%H%M%S"))
	filepath = shutil.make_archive(zip_file_name, 'zip', path)
	upload_file_name = zip_file_name

elif os.path.isfile(path):

	_, tail = os.path.split(path)
	filepath = path
	upload_file_name = tail

else:  
  print("It is a special file (socket, FIFO, device file)" )
  exit(1)

object_storage.upload_file_cos(api_key, cos_service_crn, endpoint, bucket_name, path, zip_file_name)
