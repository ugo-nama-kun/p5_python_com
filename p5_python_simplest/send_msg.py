import socket
import time

"""
Run processing code first. and run send_msg.
"""

HOST = ""
PORT = 5204

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((HOST, PORT))

# conn, addr = s.accept()
# print("connected by ", addr)

while True:
    # data = conn.recv(1024)
    # if not data: break
    # print(data)

    data = "HELLO! I'm Python!\n"
    s.send(data.encode())

    time.sleep(1)

