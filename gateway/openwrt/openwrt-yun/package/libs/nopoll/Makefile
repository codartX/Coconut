include $(TOPDIR)/rules.mk

PKG_NAME:=nopoll
PKG_VERSION:=0.2.6.b130

PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:= https://no-poll.googlecode.com/files/

PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/nopoll
  SECTION:=libs
  CATEGORY:=Libraries
  DEPENDS:=+libopenssl
  TITLE:=nopoll websocket lib
endef

define Build/Configure
	$(call Build/Configure/Default)
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/nopoll/
	$(CP) $(PKG_INSTALL_DIR)/usr/include/nopoll/nopoll* $(1)/usr/include/nopoll/

	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libnopoll.{a,so*} $(1)/usr/lib/
endef

define Package/nopoll/install
	$(INSTALL_DIR) $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libnopoll.{a,so*} $(1)/usr/lib/
endef

$(eval $(call BuildPackage,nopoll, libopenssl))
