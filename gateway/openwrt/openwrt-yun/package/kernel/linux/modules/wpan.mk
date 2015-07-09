#
# Copyright (C) 2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

WPAN_MENU:=WPAN

define KernelPackage/ieee802154
  SUBMENU:=$(WPAN_MENU)
  TITLE:=IEEE802.15.4 support
  KCONFIG:= CONFIG_IEEE802154 
  FILES:= \
	$(LINUX_DIR)/net/ieee802154/ieee802154.ko \
	$(LINUX_DIR)/net/ieee802154/af_802154.ko
  AUTOLOAD:=$(call AutoLoad,90,ieee802154 af_802154)
endef

define KernelPackage/ieee802154/description
  IEEE Std 802.15.4 defines a low data rate, low power and low
  complexity short range wireless personal area networks. It was
  designed to organise networks of sensors, switches, etc automation
  devices. Maximum allowed data rate is 250 kb/s and typical personal
  operating space around 10m.
endef

$(eval $(call KernelPackage,ieee802154))

define KernelPackage/mac802154
  SUBMENU:=$(WPAN_MENU)
  TITLE:=MAC802.15.4 support
  KCONFIG:= CONFIG_MAC802154 
  DEPENDS:=+kmod-ieee802154 kmod-lib-crc-ccitt
  FILES:=$(LINUX_DIR)/net/mac802154/mac802154.ko
  AUTOLOAD:=$(call AutoLoad,91,mac802154)
endef

define KernelPackage/mac802154/description
  This option enables the hardware independent IEEE 802.15.4
  networking stack for SoftMAC devices (the ones implementing
  only PHY level of IEEE 802.15.4 standard).

  Note: this implementation is neither certified, nor feature
  complete! We do not guarantee that it is compatible w/ other
  implementations, etc.
endef

$(eval $(call KernelPackage,mac802154))

define KernelPackage/fakehard
  SUBMENU:=$(WPAN_MENU)
  TITLE:=Fake LR-WPAN driver
  KCONFIG:=CONFIG_IEEE802154_DRIVERS CONFIG_IEEE802154_FAKEHARD
  DEPENDS:=+kmod-ieee802154
  FILES:=$(LINUX_DIR)/drivers/net/ieee802154/fakehard.ko
  AUTOLOAD:=$(call AutoLoad,92,fakehard)
endef

define KernelPackage/fakehard/description
  Say Y here to enable the fake driver that serves as an example
  of HardMAC device driver.
endef

$(eval $(call KernelPackage,fakehard))

define KernelPackage/fakelb
  SUBMENU:=$(WPAN_MENU)
  TITLE:=Fake LR-WPAN driver
  KCONFIG:=CONFIG_IEEE802154_DRIVERS CONFIG_IEEE802154_FAKELB
  DEPENDS:=+kmod-mac802154
  FILES:=$(LINUX_DIR)/drivers/net/ieee802154/fakelb.ko
  AUTOLOAD:=$(call AutoLoad,92,fakelb)
endef

define KernelPackage/fakelb/description
  Say Y here to enable the fake driver that can emulate a net
  of several interconnected radio devices.
endef

$(eval $(call KernelPackage,fakelb))

define KernelPackage/at86rf230
  SUBMENU:=$(WPAN_MENU)
  TITLE:=AT86RF230 transceiver driver
  KCONFIG:=CONFIG_IEEE802154_DRIVERS CONFIG_IEEE802154_AT86RF230 \
	CONFIG_SPI=y \
	CONFIG_SPI_MASTER=y
  DEPENDS:=+kmod-mac802154
  FILES:=$(LINUX_DIR)/drivers/net/ieee802154/at86rf230.ko
endef

$(eval $(call KernelPackage,at86rf230))

define KernelPackage/mrf24j40
  SUBMENU:=$(WPAN_MENU)
  TITLE:=Microchip MRF24J40 transceiver driver
  KCONFIG:=CONFIG_IEEE802154_DRIVERS CONFIG_IEEE802154_MRF24J40 \
	CONFIG_SPI=y \
	CONFIG_SPI_MASTER=y
  DEPENDS:=+kmod-mac802154
  FILES:=$(LINUX_DIR)/drivers/net/ieee802154/mrf24j40.ko
endef

$(eval $(call KernelPackage,mrf24j40))

define KernelPackage/6lowpan
  SUBMENU:=$(WPAN_MENU)
  TITLE:=6lowpan support
  KCONFIG:= CONFIG_IEEE802154_6LOWPAN 
  DEPENDS:=+kmod-ieee802154 kmod-ipv6
  FILES:= $(LINUX_DIR)/net/ieee802154/6lowpan.ko 
  AUTOLOAD:=$(call AutoLoad,94,6lowpan)
endef

define KernelPackage/6lowpan/description
  IPv6 compression over IEEE 802.15.4.
endef

$(eval $(call KernelPackage,6lowpan))


