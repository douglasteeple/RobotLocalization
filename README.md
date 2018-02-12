# RobotLocalization
## Udacity Term 2 Robo-ND Localization Project

### Abstract
This project is the creation and testing of two robot simulations in a ROS (Robot Operating System) / Gazebo / RViz simulation environment. Both robots use Adaptive Monte Carlo Localization techniques combined with a navigation plugin to successfully navigate a maze to reach a predefined goal position. The two robot designs are compared for efficiency in reaching the goal.

### Introduction
Localization in robotics means determining a good approximation of the current position of a robot given uncertainties of noisy sensors such as a camera or Lidar (Light Detection and Ranging) and uncertainties due to imperfect actuators moving the robot.

![Robot in Maze](doug_bot/images/splash.jpg "Figure 1. One of the simulation robots traversing the maze.")

Two robots were developed and tested in a simulation environment. The robots successfully navigated the maze using the Adaptive Monte Carlo Localization (AMCL) algo- rithm. The benchmark definition of one of the robots was given as part of the project, while the second was created independently. The benchmark robot is called ’UdacityBot’ and the second robot designed for this project is called ’DougBot’ throughout this paper. DougBot used the Willow Garage [1] PR2 gripper URDF definition as described in a ROS.org Wiki [2]. The world definition uses a map created by ’jackal race’ was developed by Clearpath Robotics [3].
