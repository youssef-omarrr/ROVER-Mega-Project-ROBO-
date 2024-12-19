# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mega_rover_project_pkg: 4 messages, 1 services")

set(MSG_I_FLAGS "-Imega_rover_project_pkg:/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mega_rover_project_pkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/SPI_data.msg" NAME_WE)
add_custom_target(_mega_rover_project_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mega_rover_project_pkg" "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/SPI_data.msg" ""
)

get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/localization_stack.msg" NAME_WE)
add_custom_target(_mega_rover_project_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mega_rover_project_pkg" "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/localization_stack.msg" ""
)

get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/srv/GetDataGUI.srv" NAME_WE)
add_custom_target(_mega_rover_project_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mega_rover_project_pkg" "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/srv/GetDataGUI.srv" ""
)

get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/controller.msg" NAME_WE)
add_custom_target(_mega_rover_project_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mega_rover_project_pkg" "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/controller.msg" ""
)

get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/mine.msg" NAME_WE)
add_custom_target(_mega_rover_project_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mega_rover_project_pkg" "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/mine.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/SPI_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mega_rover_project_pkg
)
_generate_msg_cpp(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/localization_stack.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mega_rover_project_pkg
)
_generate_msg_cpp(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/controller.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mega_rover_project_pkg
)
_generate_msg_cpp(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/mine.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mega_rover_project_pkg
)

### Generating Services
_generate_srv_cpp(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/srv/GetDataGUI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mega_rover_project_pkg
)

### Generating Module File
_generate_module_cpp(mega_rover_project_pkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mega_rover_project_pkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mega_rover_project_pkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mega_rover_project_pkg_generate_messages mega_rover_project_pkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/SPI_data.msg" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_cpp _mega_rover_project_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/localization_stack.msg" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_cpp _mega_rover_project_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/srv/GetDataGUI.srv" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_cpp _mega_rover_project_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/controller.msg" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_cpp _mega_rover_project_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/mine.msg" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_cpp _mega_rover_project_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mega_rover_project_pkg_gencpp)
add_dependencies(mega_rover_project_pkg_gencpp mega_rover_project_pkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mega_rover_project_pkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/SPI_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mega_rover_project_pkg
)
_generate_msg_eus(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/localization_stack.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mega_rover_project_pkg
)
_generate_msg_eus(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/controller.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mega_rover_project_pkg
)
_generate_msg_eus(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/mine.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mega_rover_project_pkg
)

### Generating Services
_generate_srv_eus(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/srv/GetDataGUI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mega_rover_project_pkg
)

### Generating Module File
_generate_module_eus(mega_rover_project_pkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mega_rover_project_pkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mega_rover_project_pkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mega_rover_project_pkg_generate_messages mega_rover_project_pkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/SPI_data.msg" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_eus _mega_rover_project_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/localization_stack.msg" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_eus _mega_rover_project_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/srv/GetDataGUI.srv" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_eus _mega_rover_project_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/controller.msg" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_eus _mega_rover_project_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/mine.msg" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_eus _mega_rover_project_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mega_rover_project_pkg_geneus)
add_dependencies(mega_rover_project_pkg_geneus mega_rover_project_pkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mega_rover_project_pkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/SPI_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mega_rover_project_pkg
)
_generate_msg_lisp(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/localization_stack.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mega_rover_project_pkg
)
_generate_msg_lisp(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/controller.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mega_rover_project_pkg
)
_generate_msg_lisp(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/mine.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mega_rover_project_pkg
)

### Generating Services
_generate_srv_lisp(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/srv/GetDataGUI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mega_rover_project_pkg
)

### Generating Module File
_generate_module_lisp(mega_rover_project_pkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mega_rover_project_pkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mega_rover_project_pkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mega_rover_project_pkg_generate_messages mega_rover_project_pkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/SPI_data.msg" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_lisp _mega_rover_project_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/localization_stack.msg" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_lisp _mega_rover_project_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/srv/GetDataGUI.srv" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_lisp _mega_rover_project_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/controller.msg" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_lisp _mega_rover_project_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/mine.msg" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_lisp _mega_rover_project_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mega_rover_project_pkg_genlisp)
add_dependencies(mega_rover_project_pkg_genlisp mega_rover_project_pkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mega_rover_project_pkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/SPI_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mega_rover_project_pkg
)
_generate_msg_nodejs(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/localization_stack.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mega_rover_project_pkg
)
_generate_msg_nodejs(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/controller.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mega_rover_project_pkg
)
_generate_msg_nodejs(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/mine.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mega_rover_project_pkg
)

### Generating Services
_generate_srv_nodejs(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/srv/GetDataGUI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mega_rover_project_pkg
)

### Generating Module File
_generate_module_nodejs(mega_rover_project_pkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mega_rover_project_pkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mega_rover_project_pkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mega_rover_project_pkg_generate_messages mega_rover_project_pkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/SPI_data.msg" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_nodejs _mega_rover_project_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/localization_stack.msg" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_nodejs _mega_rover_project_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/srv/GetDataGUI.srv" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_nodejs _mega_rover_project_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/controller.msg" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_nodejs _mega_rover_project_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/mine.msg" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_nodejs _mega_rover_project_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mega_rover_project_pkg_gennodejs)
add_dependencies(mega_rover_project_pkg_gennodejs mega_rover_project_pkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mega_rover_project_pkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/SPI_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mega_rover_project_pkg
)
_generate_msg_py(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/localization_stack.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mega_rover_project_pkg
)
_generate_msg_py(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/controller.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mega_rover_project_pkg
)
_generate_msg_py(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/mine.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mega_rover_project_pkg
)

### Generating Services
_generate_srv_py(mega_rover_project_pkg
  "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/srv/GetDataGUI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mega_rover_project_pkg
)

### Generating Module File
_generate_module_py(mega_rover_project_pkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mega_rover_project_pkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mega_rover_project_pkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mega_rover_project_pkg_generate_messages mega_rover_project_pkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/SPI_data.msg" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_py _mega_rover_project_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/localization_stack.msg" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_py _mega_rover_project_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/srv/GetDataGUI.srv" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_py _mega_rover_project_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/controller.msg" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_py _mega_rover_project_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/fairymido/Work/ROVER-Mega-Project-ROBO-/CODING/Mega_Rover_Project/src/mega_rover_project_pkg/msg/mine.msg" NAME_WE)
add_dependencies(mega_rover_project_pkg_generate_messages_py _mega_rover_project_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mega_rover_project_pkg_genpy)
add_dependencies(mega_rover_project_pkg_genpy mega_rover_project_pkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mega_rover_project_pkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mega_rover_project_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mega_rover_project_pkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mega_rover_project_pkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mega_rover_project_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mega_rover_project_pkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mega_rover_project_pkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mega_rover_project_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mega_rover_project_pkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mega_rover_project_pkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mega_rover_project_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mega_rover_project_pkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mega_rover_project_pkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mega_rover_project_pkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mega_rover_project_pkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mega_rover_project_pkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mega_rover_project_pkg_generate_messages_py std_msgs_generate_messages_py)
endif()
