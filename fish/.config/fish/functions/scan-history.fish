function scan-history
	sudo systemctl start postgresql.service
	and $spv_dir/src/update-history.sh 
	and cat $spv_dir/src/api/management/commands/update-history.log | tail -n 1
end
