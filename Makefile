#Owned by DairyMan@Whirlpool
#
#Copyright GNU act.
include $(TOPDIR)/rules.mk

PKG_NAME:=theme-data
PKG_VERSION:=1.000
PKG_RELEASE:=1

PKG_MAINTAINER:=Created by DM/makefile by Cobia@whirlpool
include $(INCLUDE_DIR)/package.mk

define Package/theme-data
  SECTION:=utils
  CATEGORY:=ROOter
  SUBMENU:=Themes
  TITLE:=Install scripts for theme data
  PKGARCH:=all
endef

define Package/theme-data/description
  Helper scripts to install scripts for theme data
endef


define Build/Compile
endef

define Package/theme-data/install
  $(INSTALL_DIR) $(1)/sbin
  $(INSTALL_BIN) $(PKG_BUILD_DIR)/umbim $(1)/sbin/
  $(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,theme-data))
