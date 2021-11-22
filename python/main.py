from flask import Flask
from minio import Minio
from minio.error import S3Error

app = Flask(__name__)

@app.route('/')
def hello_world():
    return "<h1>Hello, World!<h1>"

#---minio_connect---#
client = Minio('172.19.0.2:9000',
               access_key='amdmap91',
               secret_key='165krasavchikov',
               secure=False)

#---minio_return_buckets---#
buckets = client.list_buckets()
def return_buckets():
    buckets_temp = []
    for bucket in buckets:
        buckets_temp.append(bucket)
        print(bucket.name, bucket.creation_date)
    return buckets_temp
        
if __name__ == '__main__':
   app.run(host='0.0.0.0')
