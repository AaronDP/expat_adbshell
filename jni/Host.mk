LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
# We need to build this for both the device (as a shared library)
# and the host (as a static library for tools to use).
# =====================================================
# Host static library
#include $(CLEAR_VARS)
#LOCAL_SRC_FILES 		:= \
			        #lib/xmlparse.c \
        			#lib/xmlrole.c \
        			#lib/xmltok.c \
#
#LOCAL_CFLAGS 			:= \
    				#-Wall \
    				#-Wmissing-prototypes \
				#-Wstrict-prototypes \
    				#-Wno-unused-parameter \
				#-Wno-missing-field-initializers \
    				#-fexceptions \
    				#-DHAVE_EXPAT_CONFIG_H \
#
#LOCAL_C_INCLUDES 		:= $(LOCAL_PATH)/lib 
##LOCAL_CFLAGS_darwin += -fno-common
#LOCAL_MODULE			:= libexpat
#LOCAL_MODULE_HOST_OS 		:= linux # darwin linux windows
#LOCAL_EXPORT_C_INCLUDE_DIRS 	:= $(LOCAL_PATH)/lib
#LOCAL_MULTILIB 			:= both
#include $(BUILD_HOST_STATIC_LIBRARY)
#
## Host shared library
#include $(CLEAR_VARS)
#LOCAL_SRC_FILES 		:= \
			        #lib/xmlparse.c \
        			#lib/xmlrole.c \
        			#lib/xmltok.c \
#
#LOCAL_CFLAGS 			:= \
    				#-Wall \
    				#-Wmissing-prototypes \
				#-Wstrict-prototypes \
    				#-Wno-unused-parameter \
				#-Wno-missing-field-initializers \
    				#-fexceptions \
    				#-DHAVE_EXPAT_CONFIG_H \
#
#LOCAL_C_INCLUDES 		:= $(LOCAL_PATH)/lib # $(common_C_INCLUDES)
## LOCAL_CFLAGS_darwin += -fno-common
#LOCAL_MODULE			:= libexpat-host
#LOCAL_EXPORT_C_INCLUDE_DIRS 	:= $(LOCAL_PATH)/lib
#LOCAL_MULTILIB 			:= both
#include $(BUILD_HOST_SHARED_LIBRARY)

