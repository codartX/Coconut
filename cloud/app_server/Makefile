#
# Top level makefile for xmppbot 
#

include $(TOPDIR)/rules.mk

PKG_NAME:=xmppbot
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/xmppbot
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=xmppbot
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

TARGET_CFLAGS += $(FPIC)

define Package/xmppbot/install
	$(INSTALL_DIR) $(1)/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/xmppbot $(1)/bin/
endef

$(eval $(call BuildPackage,xmppbot))
