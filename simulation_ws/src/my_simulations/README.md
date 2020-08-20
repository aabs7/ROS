# Steps for simulation
1) Create a workspace
2) In your workspace, inside src, create a package
3) Inside your package do the following steps  
   
### Create launch file and add ```my_model.launch``` file. 
- ```my_model.launch``` file contains launch script for the model (in my case empty_world.world). 
- copy this in ```my_model.launch``` and remember to change <PACKAGE_NAME>. 
  ```
    <?xml version="1.0" encoding="UTF-8" ?>
    <launch>
            <!-- overwriting these args -->
            <arg name="debug" default="false" />
            <arg name="gui" default="true" />
            <arg name="pause" default="false" />
            <arg name="world" default="$(find <PACKAGE_NAME>)/world/my_world.world" />

            <!-- include gazebo_ros launcher -->
            <include file="$(find gazebo_ros)/launch/empty_world.launch">
                    <arg name="world_name" value="$(arg world)" />
                    <arg name="debug" value="$(arg debug)" />
                    <arg name="gui" value="$(arg gui)" />
                    <arg name="paused" value="$(arg pause)" />
                    <arg name="use_sim_time" value="true" />
            </include>
    </launch>
  ```
  
### Create world file and add ```my_world.world``` file. 
- ```my_world.world``` file contains sdf format texts to run all the model. 
- copy this in ```my_world.world```. This will create a empty world in gazebo.
    ```
    <?xml version="1.0" ?>
    <sdf version="1.5">
    <world name="default">

        <!-- A global light source -->
        <include>
        <uri>model://sun</uri>
        </include>

        <!-- A ground plane -->
        <include>
        <uri>model://ground_plane</uri>
        </include>
    </world>
    </sdf>
    ```
- All the models that you have can be added in this ```my_world.world``` file
    
4) goto workspace folder
5) run ```catkin_make```
6) run ```source devel/setup.bash```
7) run ```roslaunch <PACKAGE_NAME> my_model.launch```. At this step you should see an empty gazebo world. 
8) To add a postbox in your model. Follow the steps given below. 

### Add postbox to your model.
- copy this in ```my_world.world``` just above ```</world>```. 
  ```
  <!-- A postbox -->
    <include>
      <uri>model://postbox</uri>
    </include>
  ```

- goto workspace folder
- run ```catkin_make```
- run ```source devel/setup.bash```
- run ```roslaunch <PACKAGE_NAME> my_model.launch```. At this step you should see an gazebo world with a postbox.
- It may take some time to run at the beginning, because the model has to be downloaded if it is not present inside .gazebo/model folder in your linux.  
- Similarly, more model can be added like this. 


## Add custom model
- create ```models``` folder in your package and make a folder named ```<your_model_name>```
- inside ```<your_model_name>``` folder add ```model.config```
- add following to ```model.config```
  ```
    <?xml version="1.0"?>

  <model>
    <name>my1stmodel</name>
    <version>1.0</version>
    <sdf version="1.2">model-1_2.sdf</sdf>
    <sdf version="1.3">model-1_3.sdf</sdf>
    <sdf version="1.4">model-1_4.sdf</sdf>
    <sdf version="1.5">model.sdf</sdf>

    <author>
      <name>Abhish Khanal</name>
      <email>abheeshkhanal@gmail.com</email>
    </author>

    <description>
      my 1st model.
    </description>
  </model>

  ```

- inside ```<your_model_name>``` folder create ```model.sdf```
- add following to ```model.sdf```. This sdf file is taken from [here](https://github.com/osrf/gazebo_models/blob/master/frc2016_ball/model.sdf).
  ```
    <?xml version="1.0" ?>
  <sdf version="1.5">
    <model name="my1stmodel">
      <pose>0 0 0.127 0 0 0</pose>
      <link name="link">
        <inertial>
          <mass>0.213</mass>
          <inertia>
            <ixx>0.003226667</ixx>
            <ixy>0</ixy>
            <ixz>0</ixz>
            <iyy>0.003226667</iyy>
            <iyz>0</iyz>
            <izz>0.003226667</izz>
          </inertia>
        </inertial>

        <visual name="visual">
          <geometry>
            <sphere>
              <radius>0.127</radius>
            </sphere>
          </geometry>
        </visual>

        <collision name="collision">
          <geometry>
            <sphere>
              <radius>0.127</radius>
            </sphere>
          </geometry>
          <surface>
            <bounce>
              <restitution_coefficient>0.15937</restitution_coefficient>
              <threshold>0</threshold>
            </bounce>
            <contact>
              <ode>
                <max_vel>100</max_vel>
                <min_depth>0.001</min_depth>
              </ode>
            </contact>
          </surface>
        </collision>
      </link>
    </model>
  </sdf>
  ``` 

- open your ```my_world.world``` file and add this line above ```</world>``` tag. Remember to change <your_model_name>
  ```
  <!-- A ground plane -->
        <include>
        <uri>model://<your_model_name></uri>
        </include>
  ```

  - finally, dont forget to export gazebo path. Add this line to ```.bashrc``` in your home directory. 
  ```
  export GAZEBO_MODEL_PATH=~/tutorial_ws/simulation_ws/src/my_simulations/models
  ```
  change ```~/tutorial_ws/simulation_ws/src/my_simulations/models``` to your path to models


  

