# -*- Mode: makefile-gmake; tab-width: 4; indent-tabs-mode: t -*-
#
# This file is part of the LibreOffice project.
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#

$(eval $(call gb_UnpackedTarball_UnpackedTarball,harfbuzz))

$(eval $(call gb_UnpackedTarball_set_tarball,harfbuzz,$(HARFBUZZ_TARBALL),,harfbuzz))

$(eval $(call gb_UnpackedTarball_update_autoconf_configs,harfbuzz))

$(eval $(call gb_UnpackedTarball_set_patchlevel,harfbuzz,0))

# icu-65-api-macros-with-semicolon.patch.1
#   See http://site.icu-project.org/download/65  Migration Issues
# Wunused-but-set-variable.patch
#   Independently fixed upstream in a similar way with
#   <https://github.com/harfbuzz/harfbuzz/commit/d6a83abd6a0c684bd9a27f593d5be388819022b7> "Define
#   HB_UNUSED for clang"
$(eval $(call gb_UnpackedTarball_add_patches,harfbuzz, \
    external/harfbuzz/ubsan.patch \
    external/harfbuzz/icu-65-api-macros-with-semicolon.patch.1 \
    external/harfbuzz/Wunused-but-set-variable.patch \
))

# vim: set noet sw=4 ts=4:
