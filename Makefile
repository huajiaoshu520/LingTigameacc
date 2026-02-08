include $(TOPDIR)/rules.mk

PKG_NAME:=lingti-gameacc
PKG_VERSION:=20260107
PKG_RELEASE:=1
PKG_MAINTAINER:=huajiaoshu520 <https://github.com/huajiaoshu520/LingTigameacc>

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
    CATEGORY:=huajiaoshu520
    SUBMENU:=2. GameAcc
    TITLE:=LingTiGameAcc
    PKGARCH:=all
    DEPENDS:=+libc
endef

define Package/$(PKG_NAME)/description
LingTiGameAcc support for OpenWrt
endef

define Package/$(PKG_NAME)/install
    # Install the .ipk package to the target system (for example, into /tmp)
    $(INSTALL_DIR) $(1)/tmp
    $(CP) ./lingti-gameacc.ipk $(1)/tmp/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
