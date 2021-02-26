import socket
import sys

class send_log:
    
    message = ""
    server_ip = ""
    server_port = 0
    spider = None
    
    def __init__(self, server_ip:str = "10.7.2.94", server_port = 30003):
        self.server_ip = server_ip
        self.server_port = server_port
        
    def open_socket(self):
        try:
            self.spider = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        except Exception as e:
            print (e)
            sys.exit(1)
            
    def logstash_connect(self):
        try:
            self.spider.connect((self.server_ip, self.server_port))
        except Exception as e:
            print (e)
            sys.exit(2)
            
    def close_socket(self):
        self.spider.close()
        
    def send_data(self):
        self.spider.send(self.message.encode("utf-8"))

        




