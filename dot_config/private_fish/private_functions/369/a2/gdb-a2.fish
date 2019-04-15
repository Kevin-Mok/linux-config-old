function gdb-a2
	# gdb -ex "b safeStopSign.c:96" -ex "run" \
	# gdb -ex "b safeTrafficLight.c:98" -ex "run" \
	gdb -ex "run" -ex "bt" \
	# gdb -ex "run" \
	# -ex "p cur_lane_queue.count" \
	# -ex "p cur_front->car->index" \
	# -ex "p cur_front->car" \
	# -ex "p cur_front" \
	# --args ./carsim stop 1 4
	# --args ./carsim stop 3 20
	# --args ./carsim light 1 4
	--args ./carsim light 1 20
	# gdb -ex "b safeStopSign.c:86" -ex "run" --args ./carsim stop 1 10
end
