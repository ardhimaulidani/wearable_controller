# Edit following two lines to set component requirements (see docs)
set(COMPONENT_REQUIRES "adc_wearable" "IMU" "micro_ros_espidf_component")
set(COMPONENT_PRIV_REQUIRES )

set(COMPONENT_SRCS "main.c" )
set(COMPONENT_ADD_INCLUDEDIRS "")

register_component()