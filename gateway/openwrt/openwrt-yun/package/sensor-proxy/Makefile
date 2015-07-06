include $(TOPDIR)/rules.mk

PKG_NAME:=cloudzigbee
PKG_VERSION:=0.1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/cloudzigbee
  SECTION:=net
  CATEGORY:=Network
  DEPENDS:=+nopoll libcoap
  TITLE:=Cloud Zigbee Agent
endef

define Package/cloudzigbee/description
  A Cloud based Zigbee management agent
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

TARGET_CFLAGS += $(FPIC)

define Package/cloudzigbee/install
	$(INSTALL_DIR) $(1)/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/zigbee_agent $(1)/bin
endef

$(eval $(call BuildPackage,cloudzigbee))
