include $(TOPDIR)/rules.mk

PKG_NAME:=sensor-proxy
PKG_VERSION:=0.1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/sensor-proxy
  SECTION:=net
  CATEGORY:=Network
  DEPENDS:=+nopoll +libopenssl
  TITLE:=Cloud Sensor Proxy
endef

define Package/sensor-proxy/description
  A Cloud based sensor proxy
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

TARGET_CFLAGS += $(FPIC)

define Package/sensor-proxy/install
	$(INSTALL_DIR) $(1)/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/sensor-proxy $(1)/bin
endef

$(eval $(call BuildPackage,sensor-proxy))
