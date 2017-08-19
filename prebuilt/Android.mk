LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

# kernel modules
include $(CLEAR_VARS)
LOCAL_MODULE       := bcmdhd.ko
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := system/lib/modules/bcmdhd.ko
LOCAL_MODULE_PATH  := $(TARGET_OUT)/lib/modules
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := pvrsrvkm.ko
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := system/lib/modules/pvrsrvkm.ko
LOCAL_MODULE_PATH  := $(TARGET_OUT)/lib/modules
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := pvrsrvkm_sgx540_120.ko
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := system/lib/modules/pvrsrvkm_sgx540_120.ko
LOCAL_MODULE_PATH  := $(TARGET_OUT)/lib/modules
include $(BUILD_PREBUILT)