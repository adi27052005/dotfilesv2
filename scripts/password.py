import random
import subprocess
import clipboard

result = subprocess.run(['rofi', '-dmenu', '-i', '-p', 'Length of password:'], stdout=subprocess.PIPE)

global password 
password = ""

try:
    length = int(result.stdout.decode())
    for i in range (length):
        password += chr(random.randint(33,126))
    clipboard.copy(password)
    result = subprocess.run(['notify-send', 'Copied Successfully!', '-t', '1000'], stdout=subprocess.PIPE)
except:
    result = subprocess.run(['notify-send', 'Error', '-t', '1000'], stdout=subprocess.PIPE)

    

