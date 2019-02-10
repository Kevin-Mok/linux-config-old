function gdb-a2
	gdb -ex "b safeStopSign.c:40" -ex "b safeStopSign.c:44" -ex "run" \
	# gdb -ex "run" \
	# -ex "p cur_lane_queue.count" \
	# -ex "p cur_front->car->index" \
	# -ex "p cur_front->car" \
	--args ./carsim stop 1 4
	# --args ./carsim light 1 4
	# gdb -ex "b safeStopSign.c:86" -ex "run" --args ./carsim stop 1 10
end
