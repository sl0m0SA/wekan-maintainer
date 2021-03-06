# If you want to restart even on crash, uncomment while and done lines.

#while true; do
	cd /home/wekan/repos/wekan/.build/bundle
	export MONGO_URL='mongodb://127.0.0.1:27017/admin'
	# Production: https://example.com/wekan
	# Local: http://localhost:3000
	#export ipaddress=$(ifdata -pa eth0)
	export ROOT_URL='http://localhost'
	# https://github.com/wekan/wekan/wiki/Troubleshooting-Mail
	# https://github.com/wekan/wekan-mongodb/blob/master/docker-compose.yml
	export MAIL_URL='smtp://user:pass@mailserver.example.com:25/'
	# This is local port where Wekan Node.js runs, same as below on Caddyfile settings.
	export PORT=80
	node main.js & >> /home/wekan/repos/wekan.log
	cd /home/wekan/repos
#done
