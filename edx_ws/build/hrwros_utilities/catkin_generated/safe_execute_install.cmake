execute_process(COMMAND "/home/abhish/tutorial_ws/edx_ws/build/hrwros_utilities/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/abhish/tutorial_ws/edx_ws/build/hrwros_utilities/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
