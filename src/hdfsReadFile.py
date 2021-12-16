from hdfs import InsecureClient
client_hdfs = InsecureClient('http://webhdfs:50070', user='root')

with client_hdfs.read('/geeks/newToHdfs.txt') as reader:
    content = reader.read()
    print(content)

client_hdfs.write("/geeks/test.txt", "I'm new to hdfs")