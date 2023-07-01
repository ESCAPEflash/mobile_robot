# mobile_robot
Hello readers ! this is kumar ujjawal and this is my first very basic project in ros.

I tried to create and simulate a diffrential drive car in ROS using URDF and gazebo tools.
TO see my work you will need your own ubuntu 20.04 operating system and ROS (the version i used here is ros noetic)
if you have not already installed ros noetic in your system here is the installation link of ros 
"http://wiki.ros.org/noetic/Installation"

once you are done with installation process you can come back here and you can try having a look at my work.
you can follow these steps:

step 1: First switch the main branch to master in this repository to see the workspace folder.

step 2: once you downloaded all the folder to your own ubuntu system you can source the setup.bash file of workspace in the terminal.
        To do so you can run the following command in your terminal "source ws3/devel/setup.bash".
        then enter the workspace by following command "cd ws3" and after that compile your workspace.
        for that while staying in ws3 directory run this command "catkin_make".
        
step 3: once the compilation process is done you are now all set to visualize the urdf file in gazebo simulations.

NOTE* you will need to install the gazebo (version 11.00 and above are supported) too for that you can visit the ros wiki official webiste.

    * you always need to source the bash file every time you open new terminal using the above command, to elimnated this repetative task you can 
      open "gedit ~/.bashrc" and paste the command in the last line.
      
    *You will also need a package to run the car using your keyboard keys. you can install the same using the below given commands.
        *Update the package list:
                  "sudo apt update"
                  
        *Install the teleop_twist_key package using apt:
                  "sudo apt install ros-noetic-teleop-twist-key"
                  (this command will work only for ros noetic version)
                  
        *After the installation is complete, you should have the teleop_twist_key package available for use.
        
        *Now you can run the teleop node using the teleop_twist_keyboard.py script. Open a new terminal and run the following command:        
                  "rosrun teleop_twist_keyboard teleop_twist_keyboard.py"

step 4:Once the neccesary packages are done we are all set to launch our mobile bot to gazebo simulator, for that you can follow these instruction:
        first move to ros workspace "cd ws3"
        
        then move to the source folder in the workspace "cd src"
        
        then move to the package folder "cd differntial_drive_car"
        *you can explore the files here *
        
step 5: open a new terminal and launch the ros master node to communicate with packages.

        for that just run "roscore" command.(dont forgot to source the bash file if you have multiple workspaces).
        
        open another terminal and source the bash file, after that run the following command
        
        "roslaunch differntial_drive_car gazebo_diff.launch"
        
        this wil launch and empty gazebo world with the car model spawned at origin.
        
step 6: open another terminal and run the teleop_twist_keyborad node this will help you move the car with your keyboard

        "rosrun teleop_twist_keyboard teleop_twist_keyboard.py"

And that's it you can run your car using you keyboard.

*I used "articualted robotics" youtube channel to learn about creation of mobile robots using urdf you can visit them too if you want to learn and create your own 
mobile robots. link for playlist:

*this project is still under development so you can expect many more changes in future.


