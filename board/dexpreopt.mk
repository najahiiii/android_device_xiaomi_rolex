# Enable dexpreopt to speed boot time
ifeq ($(HOST_OS),linux)
      WITH_DEXPREOPT := true
      WITH_DEXPREOPT_DEBUG_INFO := false
      USE_DEX2OAT_DEBUG := false
      DONT_DEXPREOPT_PREBUILTS := true
      WITH_DEXPREOPT_PIC := true
      WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true
      PRODUCT_DEXPREOPT_SPEED_APPS += SystemUI
endif
