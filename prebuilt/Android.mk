LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

# kernel modules
include $(CLEAR_VARS)
LOCAL_MODULE       := ansi_cprng.ko
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := system/lib/modules/ansi_cprng.ko
LOCAL_MODULE_PATH  := $(TARGET_OUT)/lib/modules
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := cifs.ko
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := system/lib/modules/cifs.ko
LOCAL_MODULE_PATH  := $(TARGET_OUT)/lib/modules
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := dhd.ko
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := system/lib/modules/dhd.ko
LOCAL_MODULE_PATH  := $(TARGET_OUT)/lib/modules
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := scsi_wait_scan.ko
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := system/lib/modules/scsi_wait_scan.ko
LOCAL_MODULE_PATH  := $(TARGET_OUT)/lib/modules
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := sec_dock_keyboard.ko
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := system/lib/modules/sec_dock_keyboard.ko
LOCAL_MODULE_PATH  := $(TARGET_OUT)/lib/modules
include $(BUILD_PREBUILT)
