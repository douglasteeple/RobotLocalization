#########################################################
# start 3 terminals and launch:
#   1. gazebo and rViz
#   2. amcl
#   3. navigation_goal
#
#########################################################
bot=doug
echo "Starting ${bot}_bot $*"
if [[ "$1" == "-h" ]]
then
	echo "usage: $(basename $0) [--goal]"
	exit
fi
arg=$1
if [[ "$arg" != "--goalonly" ]]
then
	echo "roslaunch ${bot}_bot ${bot}_world.launch"
	xterm -e roslaunch ${bot}_bot ${bot}_world.launch&
	sleep 20
	echo "roslaunch ${bot}_bot amcl.launch"
	xterm -e roslaunch ${bot}_bot amcl.launch&
fi
if [[ "$arg" == "--goal" || "$arg" == "--goalonly" ]]
then
	sleep 20
	echo "rosrun ${bot}_bot ${bot}_navigation_goal"
	rosrun ${bot}_bot ${bot}_navigation_goal
fi

