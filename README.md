Wearable Device for SAFMC 2022
==============================
Development of SAFMC 2022 D1 Category Wearable Device using ESP32 with FreeRTOS and MicroROS 

## Usage
### MicroROS
```bash
# Source the ROS 2 installation
source /opt/ros/$ROS_DISTRO/setup.bash# Create a workspace and download the micro-ROS tools
mkdir microros_ws
cd microros_ws
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
# Download micro-ROS-Agent packages
ros2 run micro_ros_setup create_agent_ws.sh
# Build step
ros2 run micro_ros_setup build_agent.sh
source install/local_setup.bash
```
## How to Connect
Make sure the device is powered and connected to the same network, then run:
```bash
ros2 run micro_ros_agent micro_ros_agent udp4 --port 8888
```
Press the EN button if device still disconnected from MicroROS-Agent.

## Installation (for development)
### ESP-IDF
Install dependencies
```bash
sudo apt-get install git wget flex bison gperf python3 python3-pip python3-setuptools cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0
```
Install ESP-IDF from sources
```bash
mkdir -p esp
cd ~/esp
git clone -b v4.2.2 --recursive https://github.com/espressif/esp-idf.git
```
Install the tools
```bash
cd ~/esp/esp-idf
./install.sh
```
Set up the environment variables
```bash
. $HOME/esp/esp-idf/export.sh
```
Clone repo
```bash
git clone https://github.com/ardhimaulidani/SAFMC_Wearable
```
## Reference
- How to connect ESP32 to ROS2 using MicroROS : 
  https://medium.com/@SameerT009/connect-esp32-to-ros2-foxy-5f06e0cc64df
- MicroROS component for ESP32 : 
  https://github.com/micro-ROS/micro_ros_espidf_component
- FreeRTOS in ESP32 : 
  https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-reference/system/freertos.html
