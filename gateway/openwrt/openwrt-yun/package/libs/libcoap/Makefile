include $(TOPDIR)/rules.mk

PKG_NAME:=libcoap
PKG_VERSION:=4.1.1
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz

include $(INCLUDE_DIR)/package.mk

define Package/libcoap
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=coap library
endef

define Build/Configure
	$(call Build/Configure/Default)
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/libcoap/
	$(CP) $(PKG_BUILD_DIR)/*.h $(1)/usr/include/libcoap/
	
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/libcoap.a $(1)/usr/lib/
endef

define Package/libcoap/install
	$(INSTALL_DIR) $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/libcoap.a $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libcoap))

