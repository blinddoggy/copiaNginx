server {
        listen 80;
        listen [::]:80;

        root /var/www/kitevibes.com/html;
        index index.html index.htm index.nginx-debian.html;

        server_name kitevibes.com www.kitevibes.com;

        location / {
                proxy_pass http://127.0.0.1:5000/;
        }
}
