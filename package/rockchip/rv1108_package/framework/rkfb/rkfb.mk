RKFB_SITE = $(TOPDIR)/../framework/rkfb
RKFB_SITE_METHOD = local
RKFB_INSTALL_STAGING = YES

ifeq ($(BR2_PACKAGE_RKFB_HDMI_MAX_1080),y)
RKFB_CONF_OPTS = -DHDMI_MAX_1080=ON
endif

ifeq ($(BR2_PACKAGE_RKFB_HDMI_MAX_720),y)
RKFB_CONF_OPTS = -DHDMI_MAX_720=ON
endif

$(eval $(cmake-package))