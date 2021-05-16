echo -n "Enable autoindex? (Y/N): "
read AUTOINDEX

YES="Y"
NO="N"

if [ "$AUTOINDEX" = "$YES" ]; then
    cp nginx.conf /etc/nginx/sites-available/localhost
    service nginx restart
    echo "Autoindex enabled."
elif [ "$AUTOINDEX" = "$NO" ]; then
    cp nginx_autoindex_off.conf /etc/nginx/sites-available/localhost
	service nginx restart
    echo "Autoindex disabled."
else
    echo "Incorrect value."
fi