# DeltaTask2
## Second Delta Task Submission 

The docker image for the server setup found at:
'''bash
docker run -d -p 80:80 jerryj05/gems
'''
The '-p 80:80' forwards the container's localhost to the host machines localhost. Run the following line as root user in the host machine to make the text file appear with 'gemini.club' as the domain name:

'''bash
echo "127.0.0.1 gemini.club"
'''

