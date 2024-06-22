# DeltaTask2
## Second Delta Task Submission 

The docker image for the server setup found at:
```bash
docker run -d -p 80:80 jerryj05/gems
```
The above image was made from the d2tasks folder files.
The `-p 80:80` forwards the container's localhost to the host machines localhost. Run the following line as root user in the host machine to make the text file appear with 'gemini.club' as the domain name:

```bash
echo "127.0.0.1 gemini.club" >> /etc/hosts
```
The Sql database container can be made from the below command
```bash
docker run -d jerryj05/menteesdb
```
The files for the above image are in the folder menteesdb
The yml file for the docker compose combining the server and the database are found in the yaml folder. Executed with `docker-compose up -d`

