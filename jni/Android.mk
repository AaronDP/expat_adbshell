LOCAL_PATH			:= $(call my-dir)
# =========================================================================
# ============================ Device shared library ======================
# =========================================================================
include $(CLEAR_VARS)
ifeq ($(TARGET_ARCH),arm)
    LOCAL_SDK_VERSION := 8
else
    LOCAL_SDK_VERSION := 9
endif
LOCAL_MODULE			:= libexpat
LOCAL_ARM_MODE 			:= arm
LOCAL_SRC_FILES 		:= lib/xmlparse.c 
LOCAL_SRC_FILES 		+= lib/xmlrole.c 
LOCAL_SRC_FILES 		+= lib/xmltok.c 
LOCAL_C_INCLUDES 		:= $(LOCAL_PATH)/lib
LOCAL_SYSTEM_SHARED_LIBRARIES 	:= libc
LOCAL_ADDITIONAL_DEPENDENCIES 	:= $(LOCAL_PATH)/Android.mk
LOCAL_MODULE_TAGS 		:= optional
LOCAL_EXPORT_C_INCLUDE_DIRS 	:= $(LOCAL_PATH)/lib
include $(BUILD_SHARED_LIBRARY)
# =========================================================================
# =========================================================================
INSTALL_LOCATION		:= /data/local/tmp/lib
INSTALL_ABI			:= armeabi-v7a
# =========================================================================
all:
	cp libs/$(INSTALL_ABI)/libexpat.so $(INSTALL_LOCATION)
	cp jni/lib/expat.h $(INSTALL_LOCATION)/include
	cp jni/lib/expat_external.h $(INSTALL_LOCATION)/include
