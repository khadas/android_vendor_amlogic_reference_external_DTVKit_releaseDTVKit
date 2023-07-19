LOCAL_PATH := $(call my-dir)

ifeq (,$(wildcard $(LOCAL_PATH)/../android-rpcservice))
include $(CLEAR_VARS)
LOCAL_MODULE := dtvkitserver_releaseinfo.txt
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_TAGS := optional
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false
LOCAL_VENDOR_MODULE := true
LOCAL_STRIP_MODULE := false
LOCAL_SHARED_LIBRARIES := \
    android.hidl.allocator@1.0 \
    libam_adp \
    libam_mw \
    libamdvr \
    libbase \
    libbinder \
    libc++ \
    libc \
    libcrypto \
    libcurl \
    libcutils \
    libdl \
    libft2-aml \
    libhidlbase \
    libhidlmemory \
    libhidltransport \
    libjpeg \
    liblog \
    libm \
    libmediahal_resman \
    libmediahal_tsplayer \
    libmediandk \
    libsqlite \
    libssl \
    libutils \
    vendor.amlogic.hardware.dtvkitserver@1.0 \
    libaml_mp_sdk.vendor \
    libutilscallstack \
    libteec \
    libsecmem \
    libsystemcontrolservice \
    vendor.amlogic.hardware.systemcontrol@1.0 \
    vendor.amlogic.hardware.systemcontrol@1.1 \
    libfmq.vendor \
    libmeson_display_adapter_remote \
    libmeson_display_service

LOCAL_MODULE := dtvkitserver
LOCAL_SRC_FILES := dtvkitserver
LOCAL_INIT_RC := dtvkitserver.rc
LOCAL_VINTF_FRAGMENTS := vendor.amlogic.hardware.dtvkitserver@1.0.xml
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)
endif

include $(call all-makefiles-under,$(LOCAL_PATH))
