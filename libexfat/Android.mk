LOCAL_PATH := $(call my-dir)

common_src_files = cluster.c io.c log.c lookup.c mount.c node.c time.c utils.c

include $(CLEAR_VARS)
LOCAL_MODULE := libexfat_static
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS = -Wno-error -D_FILE_OFFSET_BITS=64 -std=gnu99
LOCAL_SRC_FILES = $(common_src_files)
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_STATIC_LIBRARIES := libfuse_static
include $(BUILD_STATIC_LIBRARY)
