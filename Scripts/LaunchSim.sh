#Launching Gazebo simulation
echo ==========================
echo Launching Gazebo...
echo ==========================

gnome-terminal --tab --command="roslaunch open_manipulator_gazebo open_manipulator_gazebo.launch"
sleep 5

#Opening new terminal for the next command
#Enable controller for simulation
echo =================================
echo Launching ros controller node...
echo =================================

gnome-terminal --tab --command="roslaunch open_manipulator_controller open_manipulator_controller.launch use_platform:=false"
sleep 5

#Opening new terminal for the next command
#Open controller GUI or Keyboard Teleoperation
echo ======================================
echo Selecting control variants
echo 1 - GUI
echo 2 - Keyboard Teleoperation
echo ======================================
echo -n "Option: "
read option

case $option in
 1)gnome-terminal --tab --command="roslaunch open_manipulator_control_gui 					open_manipulator_control_gui.launch";;
 2)gnome-terminal --tab --command="roslaunch open_manipulator_teleop 					open_manipulator_teleop_keyboard.launch";;
 *)echo Invalid option;;
esac

echo -e "\nSimulation initialized!\n"
echo To start the simulation click on the play button on the down left side of the Gazebo simulation.
echo -e "If you chose the GUI also press on the Timer Start button.\n"
