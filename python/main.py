# from flask import Flask
# from flask import render_template
# from minio import Minio
# from minio.error import S3Error


# app = Flask(__name__)

# @app.route('/')
# def hello_world():
#     return "<h1>Hello, World!<h1>" 

# client = Minio('minio:9000',
#                access_key='dima',
#                secret_key='mypassword',
#                secure=False)

# def get_buckets_list():
#     buckets_list=[]
#     buckets = client.list_buckets()
#     for bucket in buckets:
#         print(bucket.name, bucket.creation_date)
#         buckets_list=[bucket.name]
#     return buckets_list
# get_buckets_list()

# if __name__ == '__main__':
#    app.run(host='0.0.0.0')