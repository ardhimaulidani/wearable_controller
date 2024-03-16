Wearable Controller
==============================
Wearable Controller using ESP32 with FreeRTOS and MicroROS.
Although previously used for drone control in SAFMC 2022 competition, this device is capable to control anything with 6 DoF motion sensing input.
This wearable controller is also equipped with 3 channel of analog input and 2 buttons for extra control.

![wearable](https://github.com/ardhimaulidani/SAFMC_Wearable/assets/62376702/5faacb21-9c05-45bb-86f6-6163b41ba1f6)

## Usage
### MicroROS
```bash
# Source the ROS 2 installation
source /opt/ros/$ROS_DISTRO/setup.bash

# Create a workspace and download the micro-ROS tools
mkdir microros_ws && cd microros_ws
git clone -b $ROS_DISTRO https://github.com/micro-ROS/micro_ros_setup.git src/micro_ros_setup
sudo apt update && rosdep update
rosdep install --from-path src --ignore-src -y

# Install pip
sudo apt-get install python3-pip

# Build micro-ROS tools and source them
colcon build
source install/local_setup.bash
```

### Create MicroROS-Agent
```bash
# Run micro-ROS-Agent scripts (need internet)
ros2 run micro_ros_setup create_agent_ws.sh

# Build
ros2 run micro_ros_setup build_agent.sh
source install/local_setup.bash
```

### How to Connect
Make sure the device is powered and connected to the same network, then run:
```bash
ros2 run micro_ros_agent micro_ros_agent udp4 --port 8888
```
Press the EN button if device still disconnected from MicroROS-Agent.

## Firmware Development
Installation guide for development usage. Clone exact version of ESP-IDF for the code to be working correctly.
```bash
# Install dependencies
sudo apt-get install git wget flex bison gperf python3 python3-pip python3-setuptools cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0
pip3 install catkin_pkg lark-parser empy colcon-common-extensions importlib-resources

# Clone ESP-IDF v4.2.2 from sources repo
mkdir -p esp
cd ~/esp
git clone -b v4.2.2 --recursive https://github.com/espressif/esp-idf.git

# Install esp-idf tools
cd ~/esp/esp-idf
./install.sh

# Set up the environment variables
. $HOME/esp/esp-idf/export.sh

# Clone Repo
git clone https://github.com/ardhimaulidani/SAFMC_Wearable.git
cd SAFMC_Wearable/components
git clone https://github.com/micro-ROS/micro_ros_espidf_component
```

Before build edit "micro_ros_espidf_component/colcon.meta" 
```c
        "rmw_microxrcedds": {
            "cmake-args": [
                "-DRMW_UXRCE_XML_BUFFER_LENGTH=400",
                "-DRMW_UXRCE_TRANSPORT=udp",
                "-DRMW_UXRCE_MAX_NODES=1",
                "-DRMW_UXRCE_MAX_PUBLISHERS=3",
                "-DRMW_UXRCE_MAX_SUBSCRIPTIONS=0",
                "-DRMW_UXRCE_MAX_SERVICES=0",
                "-DRMW_UXRCE_MAX_CLIENTS=0",
                "-DRMW_UXRCE_MAX_HISTORY=1"
            ]
        },
        "embeddedrtps": {
            "cmake-args": [
                "-DERTPS_MAX_PUBLISHERS=3",
                "-DERTPS_MAX_SUBSCRIPTIONS=0",
                "-DERTPS_MAX_SERVICES=0",
                "-DERTPS_MAX_CLIENTS=0",
                "-DERTPS_MAX_HISTORY=1"
            ]
        },
```

## How to Change Wearable Device IP and Port
```bash
# Navigate to directory
cd ~/esp/esp-idf/  

# Source esp-idf
. export.sh

# Navigate to git directory
cd SAFMC_Wearable/  

# Initiate build config
idf.py set-target esp32 # use only if program was changed
idf.py menuconfig  

# go to Micro-ROS Settings  
# Change IP Address (check from ifconfig bash)
# Change Port to whatever you want
# Change wifi SSID and password in WiFi Configuration 

# Connect ESP32 programmer to PC
# Get permission on serial access
sudo chmod 666 /dev/ttyUSB0

# Build and Flash
idf.py build  
idf.py flash
```

## References
* [ROS2 to MicroROS](https://medium.com/@SameerT009/connect-esp32-to-ros2-foxy-5f06e0cc64df) : How to connect ESP32 to ROS2 using MicroROS :
* [MicroROS ESP32](https://github.com/micro-ROS/micro_ros_espidf_component) : MicroROS component for ESP32
* [FreeRTOS ESP32](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-reference/system/freertos.html) : FreeRTOS documentation on ESP-IDF
  
