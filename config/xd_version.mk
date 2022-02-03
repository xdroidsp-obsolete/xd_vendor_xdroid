
#
# Copyright (C) 2022 a xdroid Prjkt
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

XDROID_HOST_TIME := $(shell date +"%Y%m%d-%H%M")
XDROID_BUILD_DATE := $(shell date -u +%Y%m%d)
XDROID_BUILD_TIME := $(shell date -u +%H%M)
XDROID_BUILD_DATE_TIME := $(XDROID_BUILD_TIME)$(XDROID_BUILD_DATE)

ifndef XDROID_BUILD_TYPE
   XDROID_BUILD_TYPE := DVLPMNT
endif

XDROID_VERSION := rev2.0
XDROID_CODENAME := mnmlistyou
XDROID_REVISION := xd_$(XDROID_VERSION).$(XDROID_CODENAME).$(XDROID_BUILD_TYPE)

XDROID_BUILD_VERSION := $(XDROID_REVISION)-$(XDROID_BUILD)-$(XDROID_HOST_TIME)
XDROID_BUILD_NUMBER := $(XDROID_VERSION).$(XDROID_HOST_TIME)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
   ro.xdroid.version=$(XDROID_VERSION) \
   ro.xdroid.codename=$(XDROID_CODENAME) \
   ro.xdroid.revision=$(XDROID_REVISION) \
   ro.xdroid.build.version=$(XDROID_BUILD_VERSION) \
   ro.xdroid.build.number=$(XDROID_BUILD_NUMBER) \
   ro.xdroid.build.type=$(XDROID_BUILD_TYPE) \
   ro.build.datetime=$(XDROID_BUILD_DATE_TIME)