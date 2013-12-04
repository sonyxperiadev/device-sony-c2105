LOCAL_PATH := $(call my-dir)

# Create symbolic links

# MDM
$(shell mkdir -p $(TARGET_OUT_ETC)/firmware; \
        ln -sf /firmware/image/apps.mbn $(TARGET_OUT_ETC)/firmware/apps.mbn; \
        ln -sf /firmware/image/dsp1.mbn $(TARGET_OUT_ETC)/firmware/dsp1.mbn; \
        ln -sf /firmware/image/dsp2.mbn $(TARGET_OUT_ETC)/firmware/dsp2.mbn; \
        ln -sf /firmware/image/dsp3.mbn $(TARGET_OUT_ETC)/firmware/dsp3.mbn; \
        ln -sf /firmware/image/rpm.mbn $(TARGET_OUT_ETC)/firmware/rpm.mbn; \
        ln -sf /firmware/image/sbl1.mbn $(TARGET_OUT_ETC)/firmware/sbl1.mbn; \
        ln -sf /firmware/image/sbl2.mbn $(TARGET_OUT_ETC)/firmware/sbl2.mbn; \
        ln -sf /firmware/image/efs1.mbn $(TARGET_OUT_ETC)/firmware/efs1.mbn; \
        ln -sf /firmware/image/efs2.mbn $(TARGET_OUT_ETC)/firmware/efs2.mbn; \
        ln -sf /firmware/image/efs3.mbn $(TARGET_OUT_ETC)/firmware/efs3.mbn; \
        ln -sf /firmware/image/acdb.mbn $(TARGET_OUT_ETC)/firmware/acdb.mbn; \
        ln -sf /firmware/image/mdm_acdb.img $(TARGET_OUT_ETC)/firmware/mdm_acdb.img)

# Modem
$(shell mkdir -p $(TARGET_OUT_ETC)/firmware; \
        ln -sf /firmware/image/modem.b00 $(TARGET_OUT_ETC)/firmware/modem.b00; \
        ln -sf /firmware/image/modem.b01 $(TARGET_OUT_ETC)/firmware/modem.b01; \
        ln -sf /firmware/image/modem.b02 $(TARGET_OUT_ETC)/firmware/modem.b02; \
        ln -sf /firmware/image/modem.b03 $(TARGET_OUT_ETC)/firmware/modem.b03; \
        ln -sf /firmware/image/modem.b04 $(TARGET_OUT_ETC)/firmware/modem.b04; \
        ln -sf /firmware/image/modem.b05 $(TARGET_OUT_ETC)/firmware/modem.b05; \
        ln -sf /firmware/image/modem.b06 $(TARGET_OUT_ETC)/firmware/modem.b06; \
        ln -sf /firmware/image/modem.b07 $(TARGET_OUT_ETC)/firmware/modem.b07; \
        ln -sf /firmware/image/modem.b08 $(TARGET_OUT_ETC)/firmware/modem.b08; \
        ln -sf /firmware/image/modem.b09 $(TARGET_OUT_ETC)/firmware/modem.b09; \
        ln -sf /firmware/image/modem.b10 $(TARGET_OUT_ETC)/firmware/modem.b10; \
        ln -sf /firmware/image/modem.mdt $(TARGET_OUT_ETC)/firmware/modem.mdt)

$(shell mkdir -p $(TARGET_OUT_ETC)/firmware; \
        ln -sf /firmware/image/modem_fw.b00 $(TARGET_OUT_ETC)/firmware/modem_fw.b00; \
        ln -sf /firmware/image/modem_fw.b01 $(TARGET_OUT_ETC)/firmware/modem_fw.b01; \
        ln -sf /firmware/image/modem_fw.b02 $(TARGET_OUT_ETC)/firmware/modem_fw.b02; \
        ln -sf /firmware/image/modem_fw.b03 $(TARGET_OUT_ETC)/firmware/modem_fw.b03; \
        ln -sf /firmware/image/modem_fw.b04 $(TARGET_OUT_ETC)/firmware/modem_fw.b04; \
        ln -sf /firmware/image/modem_fw.b05 $(TARGET_OUT_ETC)/firmware/modem_fw.b05; \
        ln -sf /firmware/image/modem_fw.b06 $(TARGET_OUT_ETC)/firmware/modem_fw.b06; \
        ln -sf /firmware/image/modem_fw.b07 $(TARGET_OUT_ETC)/firmware/modem_fw.b07; \
        ln -sf /firmware/image/modem_fw.b08 $(TARGET_OUT_ETC)/firmware/modem_fw.b08; \
        ln -sf /firmware/image/modem_fw.b09 $(TARGET_OUT_ETC)/firmware/modem_fw.b09; \
        ln -sf /firmware/image/modem_fw.b10 $(TARGET_OUT_ETC)/firmware/modem_fw.b10; \
        ln -sf /firmware/image/modem_fw.b11 $(TARGET_OUT_ETC)/firmware/modem_fw.b11; \
        ln -sf /firmware/image/modem_fw.b12 $(TARGET_OUT_ETC)/firmware/modem_fw.b12; \
        ln -sf /firmware/image/modem_fw.b13 $(TARGET_OUT_ETC)/firmware/modem_fw.b13; \
        ln -sf /firmware/image/modem_fw.b14 $(TARGET_OUT_ETC)/firmware/modem_fw.b14; \
        ln -sf /firmware/image/modem_fw.b15 $(TARGET_OUT_ETC)/firmware/modem_fw.b15; \
        ln -sf /firmware/image/modem_fw.b16 $(TARGET_OUT_ETC)/firmware/modem_fw.b16; \
        ln -sf /firmware/image/modem_fw.b17 $(TARGET_OUT_ETC)/firmware/modem_fw.b17; \
        ln -sf /firmware/image/modem_fw.b18 $(TARGET_OUT_ETC)/firmware/modem_fw.b18; \
        ln -sf /firmware/image/modem_fw.b19 $(TARGET_OUT_ETC)/firmware/modem_fw.b19; \
        ln -sf /firmware/image/modem_fw.b20 $(TARGET_OUT_ETC)/firmware/modem_fw.b20; \
        ln -sf /firmware/image/modem_fw.b21 $(TARGET_OUT_ETC)/firmware/modem_fw.b21; \
        ln -sf /firmware/image/modem_fw.b22 $(TARGET_OUT_ETC)/firmware/modem_fw.b22; \
        ln -sf /firmware/image/modem_fw.b23 $(TARGET_OUT_ETC)/firmware/modem_fw.b23; \
        ln -sf /firmware/image/modem_fw.b24 $(TARGET_OUT_ETC)/firmware/modem_fw.b24; \
        ln -sf /firmware/image/modem_fw.b25 $(TARGET_OUT_ETC)/firmware/modem_fw.b25; \
        ln -sf /firmware/image/modem_fw.b26 $(TARGET_OUT_ETC)/firmware/modem_fw.b26; \
        ln -sf /firmware/image/modem_fw.b27 $(TARGET_OUT_ETC)/firmware/modem_fw.b27; \
        ln -sf /firmware/image/modem_fw.b28 $(TARGET_OUT_ETC)/firmware/modem_fw.b28; \
        ln -sf /firmware/image/modem_fw.b29 $(TARGET_OUT_ETC)/firmware/modem_fw.b29; \
        ln -sf /firmware/image/modem_fw.b30 $(TARGET_OUT_ETC)/firmware/modem_fw.b30; \
        ln -sf /firmware/image/modem_fw.b31 $(TARGET_OUT_ETC)/firmware/modem_fw.b31; \
        ln -sf /firmware/image/modem_fw.b32 $(TARGET_OUT_ETC)/firmware/modem_fw.b32; \
        ln -sf /firmware/image/modem_fw.b33 $(TARGET_OUT_ETC)/firmware/modem_fw.b33; \
        ln -sf /firmware/image/modem_fw.b34 $(TARGET_OUT_ETC)/firmware/modem_fw.b34; \
        ln -sf /firmware/image/modem_fw.b35 $(TARGET_OUT_ETC)/firmware/modem_fw.b35; \
        ln -sf /firmware/image/modem_fw.b36 $(TARGET_OUT_ETC)/firmware/modem_fw.b36; \
        ln -sf /firmware/image/modem_fw.b37 $(TARGET_OUT_ETC)/firmware/modem_fw.b37; \
        ln -sf /firmware/image/modem_fw.b38 $(TARGET_OUT_ETC)/firmware/modem_fw.b38; \
        ln -sf /firmware/image/modem_fw.b39 $(TARGET_OUT_ETC)/firmware/modem_fw.b39; \
        ln -sf /firmware/image/modem_fw.mdt $(TARGET_OUT_ETC)/firmware/modem_fw.mdt)

$(shell mkdir -p $(TARGET_OUT_ETC)/firmware; \
        ln -sf /firmware/image/q6.b00 $(TARGET_OUT_ETC)/firmware/q6.b00; \
        ln -sf /firmware/image/q6.b01 $(TARGET_OUT_ETC)/firmware/q6.b01; \
        ln -sf /firmware/image/q6.b02 $(TARGET_OUT_ETC)/firmware/q6.b02; \
        ln -sf /firmware/image/q6.b03 $(TARGET_OUT_ETC)/firmware/q6.b03; \
        ln -sf /firmware/image/q6.b04 $(TARGET_OUT_ETC)/firmware/q6.b04; \
        ln -sf /firmware/image/q6.b05 $(TARGET_OUT_ETC)/firmware/q6.b05; \
        ln -sf /firmware/image/q6.b06 $(TARGET_OUT_ETC)/firmware/q6.b06; \
        ln -sf /firmware/image/q6.mdt $(TARGET_OUT_ETC)/firmware/q6.mdt)

# WiFi
ifeq ($(strip $(BOARD_HAS_QCOM_WLAN)),true)
$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wlan/prima; \
        ln -sf /system/etc/wifi/WCNSS_qcom_wlan_nv.bin $(TARGET_OUT_ETC)/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin; \
        ln -sf /system/etc/wifi/WCNSS_qcom_cfg.ini $(TARGET_OUT_ETC)/firmware/wlan/prima/WCNSS_qcom_cfg.ini; \
        ln -sf /persist/index.ini $(TARGET_OUT_ETC)/firmware/wlan/prima/persist_index.ini; \
        ln -sf /data/misc/wifi/index.ini $(TARGET_OUT_ETC)/firmware/wlan/prima/data_index.ini; \
        ln -sf /persist/wlan.ini $(TARGET_OUT_ETC)/firmware/wlan/prima/persist_wlan.ini; \
        ln -sf /data/misc/wifi/wlan.ini $(TARGET_OUT_ETC)/firmware/wlan/prima/data_wlan.ini)

$(shell mkdir -p $(TARGET_OUT_ETC)/firmware; \
        ln -sf /firmware/image/wcnss.b00 $(TARGET_OUT_ETC)/firmware/wcnss.b00; \
        ln -sf /firmware/image/wcnss.b01 $(TARGET_OUT_ETC)/firmware/wcnss.b01; \
        ln -sf /firmware/image/wcnss.b02 $(TARGET_OUT_ETC)/firmware/wcnss.b02; \
        ln -sf /firmware/image/wcnss.b03 $(TARGET_OUT_ETC)/firmware/wcnss.b03; \
        ln -sf /firmware/image/wcnss.b04 $(TARGET_OUT_ETC)/firmware/wcnss.b04; \
        ln -sf /firmware/image/wcnss.b05 $(TARGET_OUT_ETC)/firmware/wcnss.b05; \
        ln -sf /firmware/image/wcnss.mdt $(TARGET_OUT_ETC)/firmware/wcnss.mdt)
endif

# Audio
$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wcd9310; \
        ln -sf /data/misc/audio/wcd9310_anc.bin $(TARGET_OUT_ETC)/firmware/wcd9310/wcd9310_anc.bin; \
        ln -sf /data/misc/audio/mbhc.bin $(TARGET_OUT_ETC)/firmware/wcd9310/wcd9310_mbhc.bin)

