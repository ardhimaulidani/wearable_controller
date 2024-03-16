# Edit following two lines to set component requirements (see docs)
set(COMPONENT_REQUIRES "button" "adc_wearable" "IMU" "haptic_feedback" "micro_ros_espidf_component")
set(COMPONENT_PRIV_REQUIRES )

set(COMPONENT_SRCS "main.c" )
set(COMPONENT_ADD_INCLUDEDIRS "")

register_component()