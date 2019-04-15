function certbot-ssl
	set domain_args ""
	for domain in $argv
		set -a domain_args "-d" $domain
	end
	echo sudo certbot certonly --manual --preferred-challenges=dns \
	--email kevin.mok@live.ca --server https://acme-v02.api.letsencrypt.org/directory \
	--agree-tos $domain_args
end
