#include "ros/ros.h"
#include <std_msgs/Int16.h>
#include <tf/transform_listener.h>
#include <image_transport/image_transport.h>

#define INITIAL_TILE_SIZE_X 512
#define INITIAL_TILE_SIZE_Y 512
#define INITIAL_MAP_SIZE_X 768
#define INITIAL_MAP_SIZE_Y 768
#define INITIAL_FULL_MAP_DELAY 1
#define INITIAL_TILE_DELAY 0.1
#define DEFAULT_MAP_SCALE 0.01
