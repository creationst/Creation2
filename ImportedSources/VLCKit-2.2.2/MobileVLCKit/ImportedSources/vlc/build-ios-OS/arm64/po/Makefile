# Makefile for PO directory in any package using GNU gettext.
# Copyright (C) 1995-1997, 2000-2007, 2009-2010 by Ulrich Drepper <drepper@gnu.ai.mit.edu>
#
# This file can be copied and used freely without restrictions.  It can
# be used in projects which are not available under the GNU General Public
# License but which still want to provide support for the GNU gettext
# functionality.
# Please note that the actual code of GNU gettext is covered by the GNU
# General Public License and is *not* in the public domain.
#
# Origin: gettext-0.18.3
GETTEXT_MACRO_VERSION = 0.18

PACKAGE = vlc
VERSION = 2.2.2
PACKAGE_BUGREPORT = 

SED = /usr/bin/sed
SHELL = /bin/sh


srcdir = /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/po
top_srcdir = /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc
VPATH = /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/po

prefix = /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/install-ios-OS/arm64
exec_prefix = ${prefix}
datarootdir = ${prefix}/share
datadir = ${datarootdir}
localedir = ${datarootdir}/locale
gettextsrcdir = $(datadir)/gettext/po

INSTALL = /usr/bin/install -c
INSTALL_DATA = ${INSTALL} -m 644

# We use $(mkdir_p).
# In automake <= 1.9.x, $(mkdir_p) is defined either as "mkdir -p --" or as
# "$(mkinstalldirs)" or as "$(install_sh) -d". For these automake versions,
# ${SHELL} /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/autotools/install-sh does not start with $(SHELL), so we add it.
# In automake >= 1.10, $(MKDIR_P) is derived from ${MKDIR_P}, which is defined
# either as "/path/to/mkdir -p" or ".../install-sh -c -d". For these automake
# versions, $(mkinstalldirs) and $(install_sh) are unused.
mkinstalldirs = $(SHELL) ${SHELL} /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/autotools/install-sh -d
install_sh = $(SHELL) ${SHELL} /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/autotools/install-sh
MKDIR_P = /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/autotools/install-sh -c -d
mkdir_p = $(MKDIR_P)

GMSGFMT_ = :
GMSGFMT_no = :
GMSGFMT_yes = :
GMSGFMT = $(GMSGFMT_$(USE_MSGCTXT))
MSGFMT_ = :
MSGFMT_no = :
MSGFMT_yes = :
MSGFMT = $(MSGFMT_$(USE_MSGCTXT))
XGETTEXT_ = :
XGETTEXT_no = :
XGETTEXT_yes = :
XGETTEXT = $(XGETTEXT_$(USE_MSGCTXT))
MSGMERGE = msgmerge
MSGMERGE_UPDATE = : --update
MSGINIT = msginit
MSGCONV = msgconv
MSGFILTER = msgfilter

POFILES =  $(srcdir)/ach.po $(srcdir)/af.po $(srcdir)/am.po $(srcdir)/an.po $(srcdir)/ar.po $(srcdir)/ast.po $(srcdir)/az.po $(srcdir)/be.po $(srcdir)/bg.po $(srcdir)/bn_IN.po $(srcdir)/bn.po $(srcdir)/br.po $(srcdir)/bs.po $(srcdir)/ca.po $(srcdir)/cgg.po $(srcdir)/ckb.po $(srcdir)/co.po $(srcdir)/cs.po $(srcdir)/cy.po $(srcdir)/da.po $(srcdir)/de.po $(srcdir)/el.po $(srcdir)/en_GB.po $(srcdir)/es.po $(srcdir)/es_MX.po $(srcdir)/et.po $(srcdir)/eu.po $(srcdir)/fa.po $(srcdir)/ff.po $(srcdir)/fi.po $(srcdir)/fr.po $(srcdir)/fur.po $(srcdir)/ga.po $(srcdir)/gd.po $(srcdir)/gl.po $(srcdir)/gu.po $(srcdir)/he.po $(srcdir)/hi.po $(srcdir)/hr.po $(srcdir)/hu.po $(srcdir)/hy.po $(srcdir)/ia.po $(srcdir)/id.po $(srcdir)/is.po $(srcdir)/it.po $(srcdir)/ja.po $(srcdir)/ka.po $(srcdir)/kk.po $(srcdir)/km.po $(srcdir)/kn.po $(srcdir)/ko.po $(srcdir)/ks_IN.po $(srcdir)/ky.po $(srcdir)/lg.po $(srcdir)/lt.po $(srcdir)/lv.po $(srcdir)/mai.po $(srcdir)/mk.po $(srcdir)/ml.po $(srcdir)/mn.po $(srcdir)/mr.po $(srcdir)/ms.po $(srcdir)/my.po $(srcdir)/nb.po $(srcdir)/ne.po $(srcdir)/nl.po $(srcdir)/nn.po $(srcdir)/oc.po $(srcdir)/or.po $(srcdir)/pa.po $(srcdir)/pl.po $(srcdir)/ps.po $(srcdir)/pt_BR.po $(srcdir)/pt_PT.po $(srcdir)/ro.po $(srcdir)/ru.po $(srcdir)/si.po $(srcdir)/sk.po $(srcdir)/sl.po $(srcdir)/sq.po $(srcdir)/sr.po $(srcdir)/sv.po $(srcdir)/ta.po $(srcdir)/te.po $(srcdir)/tet.po $(srcdir)/th.po $(srcdir)/tl.po $(srcdir)/tr.po $(srcdir)/uk.po $(srcdir)/uz.po $(srcdir)/vi.po $(srcdir)/wa.po $(srcdir)/zh_CN.po $(srcdir)/zh_TW.po $(srcdir)/zu.po
GMOFILES =  $(srcdir)/ach.gmo $(srcdir)/af.gmo $(srcdir)/am.gmo $(srcdir)/an.gmo $(srcdir)/ar.gmo $(srcdir)/ast.gmo $(srcdir)/az.gmo $(srcdir)/be.gmo $(srcdir)/bg.gmo $(srcdir)/bn_IN.gmo $(srcdir)/bn.gmo $(srcdir)/br.gmo $(srcdir)/bs.gmo $(srcdir)/ca.gmo $(srcdir)/cgg.gmo $(srcdir)/ckb.gmo $(srcdir)/co.gmo $(srcdir)/cs.gmo $(srcdir)/cy.gmo $(srcdir)/da.gmo $(srcdir)/de.gmo $(srcdir)/el.gmo $(srcdir)/en_GB.gmo $(srcdir)/es.gmo $(srcdir)/es_MX.gmo $(srcdir)/et.gmo $(srcdir)/eu.gmo $(srcdir)/fa.gmo $(srcdir)/ff.gmo $(srcdir)/fi.gmo $(srcdir)/fr.gmo $(srcdir)/fur.gmo $(srcdir)/ga.gmo $(srcdir)/gd.gmo $(srcdir)/gl.gmo $(srcdir)/gu.gmo $(srcdir)/he.gmo $(srcdir)/hi.gmo $(srcdir)/hr.gmo $(srcdir)/hu.gmo $(srcdir)/hy.gmo $(srcdir)/ia.gmo $(srcdir)/id.gmo $(srcdir)/is.gmo $(srcdir)/it.gmo $(srcdir)/ja.gmo $(srcdir)/ka.gmo $(srcdir)/kk.gmo $(srcdir)/km.gmo $(srcdir)/kn.gmo $(srcdir)/ko.gmo $(srcdir)/ks_IN.gmo $(srcdir)/ky.gmo $(srcdir)/lg.gmo $(srcdir)/lt.gmo $(srcdir)/lv.gmo $(srcdir)/mai.gmo $(srcdir)/mk.gmo $(srcdir)/ml.gmo $(srcdir)/mn.gmo $(srcdir)/mr.gmo $(srcdir)/ms.gmo $(srcdir)/my.gmo $(srcdir)/nb.gmo $(srcdir)/ne.gmo $(srcdir)/nl.gmo $(srcdir)/nn.gmo $(srcdir)/oc.gmo $(srcdir)/or.gmo $(srcdir)/pa.gmo $(srcdir)/pl.gmo $(srcdir)/ps.gmo $(srcdir)/pt_BR.gmo $(srcdir)/pt_PT.gmo $(srcdir)/ro.gmo $(srcdir)/ru.gmo $(srcdir)/si.gmo $(srcdir)/sk.gmo $(srcdir)/sl.gmo $(srcdir)/sq.gmo $(srcdir)/sr.gmo $(srcdir)/sv.gmo $(srcdir)/ta.gmo $(srcdir)/te.gmo $(srcdir)/tet.gmo $(srcdir)/th.gmo $(srcdir)/tl.gmo $(srcdir)/tr.gmo $(srcdir)/uk.gmo $(srcdir)/uz.gmo $(srcdir)/vi.gmo $(srcdir)/wa.gmo $(srcdir)/zh_CN.gmo $(srcdir)/zh_TW.gmo $(srcdir)/zu.gmo
UPDATEPOFILES =  ach.po-update af.po-update am.po-update an.po-update ar.po-update ast.po-update az.po-update be.po-update bg.po-update bn_IN.po-update bn.po-update br.po-update bs.po-update ca.po-update cgg.po-update ckb.po-update co.po-update cs.po-update cy.po-update da.po-update de.po-update el.po-update en_GB.po-update es.po-update es_MX.po-update et.po-update eu.po-update fa.po-update ff.po-update fi.po-update fr.po-update fur.po-update ga.po-update gd.po-update gl.po-update gu.po-update he.po-update hi.po-update hr.po-update hu.po-update hy.po-update ia.po-update id.po-update is.po-update it.po-update ja.po-update ka.po-update kk.po-update km.po-update kn.po-update ko.po-update ks_IN.po-update ky.po-update lg.po-update lt.po-update lv.po-update mai.po-update mk.po-update ml.po-update mn.po-update mr.po-update ms.po-update my.po-update nb.po-update ne.po-update nl.po-update nn.po-update oc.po-update or.po-update pa.po-update pl.po-update ps.po-update pt_BR.po-update pt_PT.po-update ro.po-update ru.po-update si.po-update sk.po-update sl.po-update sq.po-update sr.po-update sv.po-update ta.po-update te.po-update tet.po-update th.po-update tl.po-update tr.po-update uk.po-update uz.po-update vi.po-update wa.po-update zh_CN.po-update zh_TW.po-update zu.po-update
DUMMYPOFILES =  ach.nop af.nop am.nop an.nop ar.nop ast.nop az.nop be.nop bg.nop bn_IN.nop bn.nop br.nop bs.nop ca.nop cgg.nop ckb.nop co.nop cs.nop cy.nop da.nop de.nop el.nop en_GB.nop es.nop es_MX.nop et.nop eu.nop fa.nop ff.nop fi.nop fr.nop fur.nop ga.nop gd.nop gl.nop gu.nop he.nop hi.nop hr.nop hu.nop hy.nop ia.nop id.nop is.nop it.nop ja.nop ka.nop kk.nop km.nop kn.nop ko.nop ks_IN.nop ky.nop lg.nop lt.nop lv.nop mai.nop mk.nop ml.nop mn.nop mr.nop ms.nop my.nop nb.nop ne.nop nl.nop nn.nop oc.nop or.nop pa.nop pl.nop ps.nop pt_BR.nop pt_PT.nop ro.nop ru.nop si.nop sk.nop sl.nop sq.nop sr.nop sv.nop ta.nop te.nop tet.nop th.nop tl.nop tr.nop uk.nop uz.nop vi.nop wa.nop zh_CN.nop zh_TW.nop zu.nop
DISTFILES.common = Makefile.in.in remove-potcdate.sin \
$(DISTFILES.common.extra1) $(DISTFILES.common.extra2) $(DISTFILES.common.extra3)
DISTFILES = $(DISTFILES.common) Makevars POTFILES.in \
$(POFILES) $(GMOFILES) \
$(DISTFILES.extra1) $(DISTFILES.extra2) $(DISTFILES.extra3)

POTFILES = \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_access.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_aout.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_arrays.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_bits.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_block.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_block_helper.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_charset.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_codec.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_codecs.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_codec_synchro.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_common.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_config_cat.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_config.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_configuration.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_demux.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc/deprecated.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_epg.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_es.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_es_out.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_events.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_filter.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_fixups.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_gcrypt.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_httpd.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_image.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_input.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_interface.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_intf_strings.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_iso_lang.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_keys.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc/libvlc_events.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc/libvlc.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc/libvlc_media_list.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc/libvlc_structures.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc/libvlc_vlm.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_main.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_md5.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_messages.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_meta.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_modules.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_mtime.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_network.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_objects.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_pgpkey.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_playlist.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_plugin.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_rand.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_services_discovery.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_sout.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_stream.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_strings.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_threads.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_tls.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_update.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_url.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_variables.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc/vlc.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_vlm.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_vod.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_vout.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_vout_window.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/include/vlc_xml.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/audio_output/aout_internal.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/audio_output/common.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/audio_output/dec.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/audio_output/filters.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/audio_output/output.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/config/chain.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/config/cmdline.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/config/configuration.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/config/core.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/config/file.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/config/help.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/config/intf.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/config/keys.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/darwin/error.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/extras/libc.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/extras/tdestroy.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/access.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/access.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/clock.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/clock.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/control.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/decoder.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/decoder.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/decoder_synchro.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/demux.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/demux.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/es_out.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/es_out.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/input.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/input_internal.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/item.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/meta.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/stream.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/stream.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/stream_memory.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/subtitles.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/var.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/vlm.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/vlm_internal.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/input/vlmshell.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/interface/interface.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/libvlc.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/libvlc.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/libvlc-module.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/misc/block.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/misc/cpu.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/misc/error.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/misc/es_format.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/misc/events.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/misc/filter_chain.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/misc/image.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/misc/md5.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/misc/messages.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/misc/mtime.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/misc/objects.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/misc/rand.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/misc/threads.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/misc/update.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/misc/update.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/misc/variables.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/misc/variables.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/misc/xml.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/missing.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/modules/cache.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/modules/entry.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/modules/modules.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/modules/modules.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/network/getaddrinfo.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/network/httpd.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/network/io.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/network/rootbind.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/network/tcp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/network/tls.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/network/udp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/playlist/control.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/playlist/engine.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/playlist/item.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/playlist/loadsave.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/playlist/playlist_internal.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/playlist/search.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/playlist/services_discovery.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/playlist/sort.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/playlist/thread.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/playlist/tree.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/stream_output/announce.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/stream_output/sap.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/stream_output/sdp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/stream_output/stream_output.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/stream_output/stream_output.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/text/iso-639_def.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/version.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/video_output/interlacing.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/video_output/video_output.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/video_output/video_text.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/video_output/video_widgets.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/video_output/vout_control.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/video_output/vout_internal.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/video_output/vout_intf.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/video_output/vout_subpictures.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/src/win32/thread.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/lib/audio.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/lib/core.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/lib/event.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/lib/libvlc_internal.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/lib/log.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/lib/media.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/lib/media_discoverer.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/lib/media_library.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/lib/media_list.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/lib/media_list_path.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/lib/media_list_player.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/lib/media_player.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/lib/playlist.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/lib/video.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/lib/vlm.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/alsa.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/attachment.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/avio.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/bd/bd.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/bluray.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/cdda.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/dc1394.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/dcp/dcp.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/decklink.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/directory.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/dshow/crossbar.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/dshow/dshow.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/dshow/filter.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/dshow/filter.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/dtv/access.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/dv.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/dvdnav.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/dvdread.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/eyetv.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/file.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/fs.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/ftp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/gnomevfs.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/http.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/idummy.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/imem.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/jack.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/linsys/linsys_hdsdi.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/linsys/linsys_sdi.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/live555.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/mms/asf.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/mms/asf.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/mms/buffer.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/mms/buffer.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/mms/mms.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/mms/mms.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/mms/mmsh.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/mms/mmsh.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/mms/mmstu.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/mms/mmstu.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/mtp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/oss.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access_output/bonjour.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access_output/bonjour.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access_output/dummy.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access_output/file.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access_output/http.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access_output/livehttp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access_output/shout.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access_output/udp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/pulse.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/qtcapture.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/rar/access.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/rar/rar.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/rar/rar.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/rar/stream.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/rdp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/rtp/input.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/rtp/rtp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/rtp/rtp.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/rtp/session.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/rtsp/access.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/rtsp/real_asmrp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/rtsp/real.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/rtsp/real.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/rtsp/real_rmff.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/rtsp/real_rmff.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/rtsp/real_sdpplin.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/rtsp/real_sdpplin.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/rtsp/rtsp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/rtsp/rtsp.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/screen/mac.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/screen/screen.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/screen/screen.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/screen/win32.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/screen/xcb.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/sdp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/sftp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/shm.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/smb.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/tcp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/timecode.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/udp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/v4l2/controls.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/v4l2/v4l2.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/vcd/cdrom.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/vcd/cdrom.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/vcd/cdrom_internals.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/vcd/vcd.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/vcdx/access.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/vcdx/info.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/vcdx/info.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/vcdx/vcd.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/vcdx/vcd.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/vcdx/vcdplayer.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/vcdx/vcdplayer.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/vdr.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/vnc.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/access/zip/zipstream.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/arm_neon/chroma_yuv.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/arm_neon/simple_channel_mixer.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/arm_neon/volume.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/arm_neon/yuv_rgb.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/audiobargraph_a.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/channel_mixer/dolby.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/channel_mixer/headphone.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/channel_mixer/mono.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/channel_mixer/remap.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/channel_mixer/simple.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/channel_mixer/trivial.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/chorus_flanger.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/compressor.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/converter/a52tofloat32.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/converter/a52tospdif.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/converter/dtstofloat32.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/converter/dtstospdif.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/converter/format.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/converter/mpgatofixed32.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/equalizer.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/equalizer_presets.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/gain.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/karaoke.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/normvol.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/param_eq.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/resampler/bandlimited.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/resampler/bandlimited.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/resampler/speex.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/resampler/src.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/resampler/ugly.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/scaletempo.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/spatializer/allpass.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/spatializer/allpass.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/spatializer/comb.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/spatializer/comb.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/spatializer/denormals.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/spatializer/revmodel.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/spatializer/revmodel.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/spatializer/spatializer.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/spatializer/tuning.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_filter/stereo_widen.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_mixer/float.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_mixer/integer.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_output/adummy.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_output/alsa.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_output/amem.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_output/audioqueue.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_output/audiotrack.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_output/audiounit_ios.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_output/auhal.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_output/directsound.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_output/file.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_output/jack.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_output/kai.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_output/opensles_android.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_output/oss.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_output/pulse.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_output/sndio.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_output/volume.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_output/wasapi.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_output/waveout.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/audio_output/windows_audio_common.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/a52.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/adpcm.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/aes3.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/araw.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/avcodec/audio.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/avcodec/avcodec.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/avcodec/avcodec.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/avcodec/chroma.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/avcodec/dxva2.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/avcodec/encoder.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/avcodec/fourcc.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/avcodec/hwdummy.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/avcodec/vaapi.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/avcodec/vda.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/avcodec/video.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/cc.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/cc.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/cdg.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/crystalhd.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/cvdsub.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/ddummy.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/dmo/buffer.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/dmo/dmo.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/dmo/dmo.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/dts.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/dvbsub.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/edummy.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/faad.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/fdkaac.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/flac.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/fluidsynth.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/g711.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/gstdecode.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/jpeg.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/kate.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/libass.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/libmpeg2.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/lpcm.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/mft.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/mmal.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/mpeg_audio.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/omxil/android_mediacodec.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/omxil/omxil.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/omxil/omxil.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/omxil/omxil_utils.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/omxil/utils.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/omxil/vout.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/opus.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/png.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/qsv.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/quicktime.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/rawvideo.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/schroedinger.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/sdl_image.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/shine.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/speex.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/spudec/parse.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/spudec/spudec.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/spudec/spudec.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/stl.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/subsdec.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/subsusf.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/substx3g.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/svcdsub.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/t140.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/telx.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/theora.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/twolame.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/uleaddvaudio.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/vorbis.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/vpx.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/wmafixed/wma.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/x264.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/x265.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/xwd.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/codec/zvbi.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/control/dbus/dbus.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/control/dbus/dbus_common.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/control/dbus/dbus_player.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/control/dbus/dbus_player.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/control/dbus/dbus_root.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/control/dbus/dbus_root.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/control/dbus/dbus_tracklist.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/control/dbus/dbus_tracklist.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/control/dummy.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/control/gestures.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/control/globalhotkeys/win32.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/control/globalhotkeys/xcb.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/control/hotkeys.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/control/lirc.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/control/motion.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/control/netsync.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/control/ntservice.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/control/rc.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/control/unimotion.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/control/unimotion.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/aiff.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/asf/asf.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/asf/libasf.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/asf/libasf.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/au.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/avformat/avformat.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/avformat/avformat.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/avformat/demux.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/avformat/mux.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/avi/avi.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/avi/libavi.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/avi/libavi.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/caf.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/cdg.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/demuxdump.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/dirac.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/flac.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/gme.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/image.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mjpeg.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mkv/chapter_command.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mkv/chapter_command.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mkv/chapters.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mkv/chapters.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mkv/demux.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mkv/demux.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mkv/Ebml_parser.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mkv/Ebml_parser.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mkv/matroska_segment.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mkv/matroska_segment.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mkv/matroska_segment_parse.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mkv/mkv.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mkv/mkv.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mkv/stream_io_callback.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mkv/stream_io_callback.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mkv/util.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mkv/util.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mkv/virtual_segment.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mkv/virtual_segment.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mod.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mp4/id3genres.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mp4/libmp4.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mp4/libmp4.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mp4/mp4.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mpc.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mpeg/es.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mpeg/h264.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mpeg/hevc.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/mpeg/mpgv.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/nsc.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/nsv.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/nuv.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/ogg.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/playlist/asx.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/playlist/b4s.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/playlist/dvb.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/playlist/gvp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/playlist/ifo.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/playlist/itml.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/playlist/itml.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/playlist/m3u.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/playlist/playlist.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/playlist/playlist.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/playlist/pls.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/playlist/podcast.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/playlist/qtl.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/playlist/sgimb.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/playlist/shoutcast.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/playlist/xspf.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/ps.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/ps.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/pva.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/rawaud.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/rawdv.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/rawvid.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/real.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/sid.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/smf.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/stl.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/subtitle.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/ts.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/tta.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/ty.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/vc1.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/vobsub.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/voc.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/wav.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/xa.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/xiph_metadata.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/demux/xiph_metadata.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/about.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/about.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/AddonManager.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/AddonManager.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/AppleRemote.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/AppleRemote.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/applescript.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/applescript.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/AudioEffects.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/AudioEffects.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/bookmarks.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/bookmarks.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/BWQuincyUI.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/BWQuincyUI.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/controls.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/controls.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/ControlsBar.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/ControlsBar.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/ConvertAndSave.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/ConvertAndSave.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/coredialogs.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/coredialogs.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/CoreInteraction.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/CoreInteraction.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx_dialog_provider/dialogProvider.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx_dialog_provider/VLCLoginPanel.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx_dialog_provider/VLCLoginPanel.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx_dialog_provider/VLCProgressPanel.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx_dialog_provider/VLCProgressPanel.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/ExtensionsDialogProvider.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/ExtensionsDialogProvider.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/ExtensionsManager.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/ExtensionsManager.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/eyetv.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/eyetv.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/fspanel.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/fspanel.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/intf.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/intf.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/macosx.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/MainMenu.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/MainMenu.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/MainWindow.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/MainWindow.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/MainWindowTitle.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/MainWindowTitle.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/misc.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/misc.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/open.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/open.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/output.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/output.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/playlist.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/playlist.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/playlistinfo.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/playlistinfo.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/prefs.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/prefs.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/prefs_widgets.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/prefs_widgets.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/ResumeDialogController.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/ResumeDialogController.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/simple_prefs.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/simple_prefs.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/StringUtility.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/StringUtility.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/TrackSynchronization.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/TrackSynchronization.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/VideoEffects.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/VideoEffects.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/VideoView.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/VideoView.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/VLCVoutWindowController.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/VLCVoutWindowController.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/Windows.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/Windows.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/wizard.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/macosx/wizard.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/minimal_macosx/intf.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/minimal_macosx/intf.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/minimal_macosx/macosx.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/minimal_macosx/VLCMinimalVoutWindow.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/minimal_macosx/VLCMinimalVoutWindow.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/minimal_macosx/misc.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/minimal_macosx/misc.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/ncurses.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/complete_preferences.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/complete_preferences.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/controller.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/controller.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/controller_widget.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/controller_widget.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/extended_panels.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/extended_panels.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/info_panels.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/info_panels.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/info_widgets.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/info_widgets.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/interface_widgets.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/interface_widgets.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/open_panels.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/open_panels.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/playlist/playlist.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/playlist/playlist.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/playlist/playlist_item.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/playlist/playlist_item.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/playlist/playlist_model.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/playlist/playlist_model.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/playlist/selector.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/playlist/selector.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/playlist/sorting.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/playlist/standardpanel.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/playlist/standardpanel.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/preferences_widgets.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/preferences_widgets.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/simple_preferences.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/simple_preferences.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/sout/profile_selector.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/components/sout/sout_widgets.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/bookmarks.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/bookmarks.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/convert.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/convert.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/errors.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/errors.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/extended.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/extended.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/external.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/external.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/firstrun.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/gototime.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/gototime.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/help.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/help.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/mediainfo.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/mediainfo.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/messages.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/messages.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/open.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/open.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/openurl.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/openurl.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/playlist.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/playlist.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/plugins.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/podcast_configuration.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/podcast_configuration.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/preferences.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/preferences.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs_provider.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs_provider.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/sout.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/sout.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/toolbar.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/toolbar.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/vlm.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/dialogs/vlm.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/input_manager.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/input_manager.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/main_interface.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/main_interface.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/menus.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/menus.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/qt4.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/qt4.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/recents.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/recents.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/util/customwidgets.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/util/customwidgets.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/util/input_slider.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/util/input_slider.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/util/qvlcapp.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/util/qvlcframe.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/util/registry.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/qt4/util/registry.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/async_queue.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/async_queue.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_add_item.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_add_item.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_audio.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_audio.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_change_skin.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_change_skin.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_dialogs.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_dummy.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_dvd.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_dvd.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_fullscreen.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_fullscreen.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_generic.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_input.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_input.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_layout.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_layout.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_minimize.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_minimize.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_muxer.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_muxer.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_on_top.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_on_top.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_playlist.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_playlist.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_playtree.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_playtree.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_quit.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_quit.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_resize.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_resize.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_show_window.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_snapshot.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_snapshot.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_vars.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/commands/cmd_vars.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_button.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_button.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_checkbox.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_checkbox.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_flat.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_generic.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_generic.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_image.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_image.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_list.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_list.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_move.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_move.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_radialslider.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_radialslider.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_resize.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_resize.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_slider.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_slider.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_text.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_text.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_tree.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_tree.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_video.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/controls/ctrl_video.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/events/evt_enter.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/events/evt_focus.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/events/evt_generic.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/events/evt_input.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/events/evt_input.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/events/evt_key.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/events/evt_key.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/events/evt_leave.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/events/evt_menu.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/events/evt_motion.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/events/evt_mouse.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/events/evt_mouse.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/events/evt_refresh.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/events/evt_scroll.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/events/evt_scroll.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/events/evt_special.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/events/evt_special.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/macosx/macosx_dragdrop.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/macosx/macosx_dragdrop.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/macosx/macosx_factory.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/macosx/macosx_factory.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/macosx/macosx_graphics.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/macosx/macosx_graphics.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/macosx/macosx_loop.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/macosx/macosx_loop.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/macosx/macosx_popup.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/macosx/macosx_popup.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/macosx/macosx_timer.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/macosx/macosx_timer.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/macosx/macosx_tooltip.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/macosx/macosx_tooltip.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/macosx/macosx_window.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/macosx/macosx_window.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/parser/builder.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/parser/builder_data.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/parser/builder.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/parser/expr_evaluator.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/parser/expr_evaluator.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/parser/interpreter.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/parser/interpreter.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/parser/skin_parser.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/parser/skin_parser.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/parser/xmlparser.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/parser/xmlparser.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/anchor.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/anchor.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/anim_bitmap.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/anim_bitmap.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/bitmap_font.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/bitmap_font.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/dialogs.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/dialogs.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/file_bitmap.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/file_bitmap.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/ft2_bitmap.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/ft2_bitmap.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/ft2_font.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/ft2_font.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/generic_bitmap.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/generic_bitmap.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/generic_font.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/generic_layout.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/generic_layout.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/generic_window.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/generic_window.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/ini_file.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/ini_file.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/logger.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/logger.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/os_factory.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/os_factory.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/os_graphics.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/os_loop.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/os_popup.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/os_timer.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/os_tooltip.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/os_window.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/popup.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/popup.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/scaled_bitmap.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/scaled_bitmap.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/skin_common.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/skin_main.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/theme.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/theme.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/theme_loader.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/theme_loader.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/theme_repository.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/theme_repository.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/tooltip.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/tooltip.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/top_window.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/top_window.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/var_manager.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/var_manager.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/vlcproc.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/vlcproc.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/vout_window.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/vout_window.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/window_manager.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/src/window_manager.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/utils/bezier.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/utils/bezier.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/utils/fsm.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/utils/fsm.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/utils/observer.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/utils/pointer.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/utils/position.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/utils/position.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/utils/ustring.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/utils/ustring.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/utils/var_bool.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/utils/var_bool.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/utils/variable.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/utils/var_list.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/utils/var_list.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/utils/var_percent.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/utils/var_percent.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/utils/var_text.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/utils/var_text.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/utils/var_tree.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/utils/var_tree.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/vars/equalizer.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/vars/equalizer.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/vars/playtree.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/vars/playtree.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/vars/time.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/vars/time.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/vars/volume.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/vars/volume.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/win32/win32_dragdrop.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/win32/win32_dragdrop.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/win32/win32_factory.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/win32/win32_factory.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/win32/win32_graphics.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/win32/win32_graphics.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/win32/win32_loop.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/win32/win32_loop.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/win32/win32_popup.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/win32/win32_popup.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/win32/win32_timer.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/win32/win32_timer.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/win32/win32_tooltip.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/win32/win32_tooltip.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/win32/win32_window.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/win32/win32_window.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/x11/x11_display.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/x11/x11_display.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/x11/x11_dragdrop.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/x11/x11_dragdrop.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/x11/x11_factory.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/x11/x11_factory.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/x11/x11_graphics.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/x11/x11_graphics.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/x11/x11_loop.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/x11/x11_loop.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/x11/x11_popup.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/x11/x11_popup.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/x11/x11_timer.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/x11/x11_timer.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/x11/x11_tooltip.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/x11/x11_tooltip.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/x11/x11_window.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/gui/skins2/x11/x11_window.hpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/hw/vdpau/adjust.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/hw/vdpau/avcodec.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/hw/vdpau/chroma.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/hw/vdpau/deinterlace.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/hw/vdpau/display.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/hw/vdpau/sharpen.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/demux.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/intf.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/libs/configuration.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/libs.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/libs/httpd.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/libs/input.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/libs/input.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/libs/messages.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/libs/misc.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/libs/misc.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/libs/net.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/libs/objects.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/libs/objects.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/libs/osd.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/libs/playlist.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/libs/sd.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/libs/stream.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/libs/strings.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/libs/variables.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/libs/variables.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/libs/video.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/libs/vlm.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/libs/volume.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/meta.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/vlc.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/lua/vlc.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/meta_engine/folder.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/meta_engine/taglib.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/misc/audioscrobbler.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/misc/dhparams.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/misc/gnutls.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/misc/inhibit/dbus.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/misc/inhibit/xdg.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/misc/logger.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/misc/playlist/export.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/misc/playlist/html.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/misc/playlist/m3u.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/misc/playlist/xspf.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/misc/rtsp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/misc/securetransport.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/misc/stats.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/misc/xml/libxml.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/mux/asf.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/mux/avi.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/mux/dummy.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/mux/mp4.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/mux/mpeg/bits.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/mux/mpeg/csa.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/mux/mpeg/csa.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/mux/mpeg/pes.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/mux/mpeg/pes.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/mux/mpeg/ps.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/mux/mpeg/ts.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/mux/mpjpeg.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/mux/ogg.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/mux/wav.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/notify/growl.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/notify/notify.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/packetizer/avparser.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/packetizer/copy.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/packetizer/dirac.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/packetizer/flac.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/packetizer/h264.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/packetizer/hevc.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/packetizer/mlp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/packetizer/mpeg4audio.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/packetizer/mpeg4video.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/packetizer/mpegvideo.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/packetizer/vc1.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/services_discovery/bonjour.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/services_discovery/mediadirs.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/services_discovery/mtp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/services_discovery/os2drive.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/services_discovery/podcast.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/services_discovery/pulse.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/services_discovery/sap.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/services_discovery/udev.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/services_discovery/upnp.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/services_discovery/windrive.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/services_discovery/xcb_apps.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_filter/dash/dash.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_filter/decomp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_filter/httplive.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_filter/record.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_filter/smooth/smooth.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/autodel.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/bridge.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/delay.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/description.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/display.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/dummy.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/duplicate.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/es.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/gather.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/langfromtelx.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/mosaic_bridge.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/raop.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/record.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/rtcp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/rtp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/rtpfmt.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/rtp.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/rtsp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/setid.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/smem.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/stats.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/standard.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/stream_out/transcode/transcode.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/text_renderer/freetype.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/text_renderer/quartztext.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/text_renderer/svg.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/text_renderer/tdummy.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/text_renderer/win32text.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_chroma/chain.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_chroma/grey_yuv.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_chroma/i420_rgb16.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_chroma/i420_rgb8.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_chroma/i420_rgb.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_chroma/i420_rgb_c.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_chroma/i420_rgb.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_chroma/i420_yuy2.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_chroma/i420_yuy2.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_chroma/i422_i420.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_chroma/i422_yuy2.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_chroma/i422_yuy2.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_chroma/omxdl.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_chroma/rv32.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_chroma/swscale.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_chroma/yuy2_i420.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_chroma/yuy2_i422.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/adjust.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/alphamask.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/anaglyph.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/antiflicker.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoCalculations.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoCalculations.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoConfig.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoConfig.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoConnection.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoConnection.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/atmo.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoDefs.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoDynData.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoDynData.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoExternalCaptureInput.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoExternalCaptureInput.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoInput.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoInput.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoLiveView.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoLiveView.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoOutputFilter.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoOutputFilter.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoThread.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoThread.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoTools.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoTools.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoZoneDefinition.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/atmo/AtmoZoneDefinition.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/audiobargraph_v.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/ball.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/blendbench.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/blend.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/bluescreen.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/canvas.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/colorthres.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/croppadd.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/deinterlace/algo_phosphor.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/deinterlace/deinterlace.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/deinterlace/deinterlace.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/dynamicoverlay/dynamicoverlay_buffer.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/dynamicoverlay/dynamicoverlay.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/dynamicoverlay/dynamicoverlay_commands.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/dynamicoverlay/dynamicoverlay.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/dynamicoverlay/dynamicoverlay_list.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/dynamicoverlay/dynamicoverlay_queue.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/erase.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/extract.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/filter_event_info.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/filter_picture.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/freeze.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/gaussianblur.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/gradfun.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/gradient.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/grain.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/hqdn3d.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/invert.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/logo.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/magnify.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/marq.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/mirror.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/mosaic.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/mosaic.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/motionblur.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/motiondetect.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/oldmovie.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/opencv_example.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/opencv_wrapper.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/posterize.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/postproc.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/psychedelic.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/puzzle.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/remoteosd.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/remoteosd_rfbproto.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/ripple.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/rotate.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/rss.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/scale.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/scene.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/sepia.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/sharpen.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/subsdelay.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/transform.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/vhs.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/wave.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_filter/yuvp.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/aa.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/android/nativewindow.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/android/opaque.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/android/surface.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/caca.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/caopengllayer.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/decklink.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/directfb.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/drawable.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/egl.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/fb.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/gl.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/glx.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/ios2.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/kva.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/macosx.m \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/mmal.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/msw/direct2d.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/msw/direct3d.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/msw/directx.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/msw/events.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/msw/glwin32.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/msw/wingdi.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/sdl.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/vdummy.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/vmem.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/xcb/glx.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/xcb/window.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/xcb/x11.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/xcb/xvideo.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_output/yuv.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_splitter/clone.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_splitter/panoramix.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/video_splitter/wall.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/visualization/goom.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/visualization/projectm.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/visualization/visual/effects.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/visualization/visual/fft.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/visualization/visual/fft.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/visualization/visual/visual.c \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/visualization/visual/visual.h \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/modules/visualization/vsxu.cpp \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/share/lua/http/dialogs/batch_window.html \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/share/lua/http/dialogs/browse_window.html \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/share/lua/http/dialogs/create_stream.html \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/share/lua/http/dialogs/equalizer_window.html \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/share/lua/http/dialogs/error_window.html \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/share/lua/http/dialogs/mosaic_window.html \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/share/lua/http/dialogs/offset_window.html \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/share/lua/http/dialogs/stream_config_window.html \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/share/lua/http/dialogs/stream_window.html \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/share/lua/http/index.html \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/share/lua/http/mobile_browse.html \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/share/lua/http/mobile_equalizer.html \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/share/lua/http/mobile.html \
     /Users/devmarcos/Documents/GitHubRepos/CreationVideoPlayer/VLCKit-2.2.2/MobileVLCKit/ImportedSources/vlc/share/lua/http/mobile_view.html

CATALOGS =  ach.gmo af.gmo am.gmo an.gmo ar.gmo ast.gmo az.gmo be.gmo bg.gmo bn_IN.gmo bn.gmo br.gmo bs.gmo ca.gmo cgg.gmo ckb.gmo co.gmo cs.gmo cy.gmo da.gmo de.gmo el.gmo en_GB.gmo es.gmo es_MX.gmo et.gmo eu.gmo fa.gmo ff.gmo fi.gmo fr.gmo fur.gmo ga.gmo gd.gmo gl.gmo gu.gmo he.gmo hi.gmo hr.gmo hu.gmo hy.gmo ia.gmo id.gmo is.gmo it.gmo ja.gmo ka.gmo kk.gmo km.gmo kn.gmo ko.gmo ks_IN.gmo ky.gmo lg.gmo lt.gmo lv.gmo mai.gmo mk.gmo ml.gmo mn.gmo mr.gmo ms.gmo my.gmo nb.gmo ne.gmo nl.gmo nn.gmo oc.gmo or.gmo pa.gmo pl.gmo ps.gmo pt_BR.gmo pt_PT.gmo ro.gmo ru.gmo si.gmo sk.gmo sl.gmo sq.gmo sr.gmo sv.gmo ta.gmo te.gmo tet.gmo th.gmo tl.gmo tr.gmo uk.gmo uz.gmo vi.gmo wa.gmo zh_CN.gmo zh_TW.gmo zu.gmo

# Makevars gets inserted here. (Don't remove this line!)
# Makefile variables for PO directory in any package using GNU gettext.

VPATH += ../modules/gui ../modules/gui/qt4 ../modules/gui/qt4/ui

# Usually the message domain is the same as the package name.
DOMAIN = $(PACKAGE)

# These two variables depend on the location of this directory.
subdir = po
top_builddir = ..

# These options get passed to xgettext.
XGETTEXT_OPTIONS = --directory=.. --keyword=_ --keyword=N_ --keyword=_NS --keyword=_ANS --keyword=qtr --keyword=Q_ --language=C++ --keyword=vlc_ngettext:1,2 --keyword=vlc_pgettext:1c,2 --add-comments=xgettext: --from-code=UTF-8

# This is the copyright holder that gets inserted into the header of the
# $(DOMAIN).pot file.  Set this to the copyright holder of the surrounding
# package.  (Note that the msgstr strings, extracted from the package's
# sources, belong to the copyright holder of the package.)  Translators are
# expected to transfer the copyright for their translations to this person
# or entity, or to disclaim their copyright.  The empty string stands for
# the public domain; in this case the translators are expected to disclaim
# their copyright.
COPYRIGHT_HOLDER = VideoLAN

# This is the email address or URL to which the translators shall report
# bugs in the untranslated strings:
# - Strings which are not entire sentences, see the maintainer guidelines
#   in the GNU gettext documentation, section 'Preparing Strings'.
# - Strings which use unclear terms or require additional context to be
#   understood.
# - Strings which make invalid assumptions about notation of date, time or
#   money.
# - Pluralisation problems.
# - Incorrect English spelling.
# - Incorrect formatting.
# It can be your email address, or a mailing list address where translators
# can write to without being subscribed, or the URL of a web page through
# which the translators can contact you.
MSGID_BUGS_ADDRESS = vlc-devel@videolan.org

# This is the list of locale categories, beyond LC_MESSAGES, for which the
# message catalogs shall be used.  It is usually empty.
EXTRA_LOCALE_CATEGORIES =

.SUFFIXES:
.SUFFIXES: .po .gmo .mo .sed .sin .nop .po-create .po-update

.po.mo:
	@echo "$(MSGFMT) -c -o $@ $<"; \
	$(MSGFMT) -c -o t-$@ $< && mv t-$@ $@

.po.gmo:
	@lang=`echo $* | sed -e 's,.*/,,'`; \
	test "$(srcdir)" = . && cdcmd="" || cdcmd="cd $(srcdir) && "; \
	echo "$${cdcmd}rm -f $${lang}.gmo && $(GMSGFMT) -c --statistics --verbose -o $${lang}.gmo $${lang}.po"; \
	cd $(srcdir) && rm -f $${lang}.gmo && $(GMSGFMT) -c --statistics --verbose -o t-$${lang}.gmo $${lang}.po && mv t-$${lang}.gmo $${lang}.gmo

.sin.sed:
	sed -e '/^#/d' $< > t-$@
	mv t-$@ $@


all: all-no

all-yes: stamp-po
all-no:

# Ensure that the gettext macros and this Makefile.in.in are in sync.
CHECK_MACRO_VERSION = \
	test "$(GETTEXT_MACRO_VERSION)" = "0.18" \
	  || { echo "*** error: gettext infrastructure mismatch: using a Makefile.in.in from gettext version $(GETTEXT_MACRO_VERSION) but the autoconf macros are from gettext version 0.18" 1>&2; \
	       exit 1; \
	     }

# $(srcdir)/$(DOMAIN).pot is only created when needed. When xgettext finds no
# internationalized messages, no $(srcdir)/$(DOMAIN).pot is created (because
# we don't want to bother translators with empty POT files). We assume that
# LINGUAS is empty in this case, i.e. $(POFILES) and $(GMOFILES) are empty.
# In this case, stamp-po is a nop (i.e. a phony target).

# stamp-po is a timestamp denoting the last time at which the CATALOGS have
# been loosely updated. Its purpose is that when a developer or translator
# checks out the package via CVS, and the $(DOMAIN).pot file is not in CVS,
# "make" will update the $(DOMAIN).pot and the $(CATALOGS), but subsequent
# invocations of "make" will do nothing. This timestamp would not be necessary
# if updating the $(CATALOGS) would always touch them; however, the rule for
# $(POFILES) has been designed to not touch files that don't need to be
# changed.
stamp-po: $(srcdir)/$(DOMAIN).pot
	@$(CHECK_MACRO_VERSION)
	test ! -f $(srcdir)/$(DOMAIN).pot || \
	  test -z "$(GMOFILES)" || $(MAKE) $(GMOFILES)
	@test ! -f $(srcdir)/$(DOMAIN).pot || { \
	  echo "touch stamp-po" && \
	  echo timestamp > stamp-poT && \
	  mv stamp-poT stamp-po; \
	}

# Note: Target 'all' must not depend on target '$(DOMAIN).pot-update',
# otherwise packages like GCC can not be built if only parts of the source
# have been downloaded.

# This target rebuilds $(DOMAIN).pot; it is an expensive operation.
# Note that $(DOMAIN).pot is not touched if it doesn't need to be changed.
# The determination of whether the package xyz is a GNU one is based on the
# heuristic whether some file in the top level directory mentions "GNU xyz".
# If GNU 'find' is available, we avoid grepping through monster files.
$(DOMAIN).pot-update: $(POTFILES) $(srcdir)/POTFILES.in remove-potcdate.sed
	if { if (LC_ALL=C find --version) 2>/dev/null | grep GNU >/dev/null; then \
	       LC_ALL=C find -L $(top_srcdir) -maxdepth 1 -type f -size -10000000c -exec grep 'GNU vlc' /dev/null '{}' ';' 2>/dev/null; \
	     else \
	       LC_ALL=C grep 'GNU vlc' $(top_srcdir)/* 2>/dev/null; \
	     fi; \
	   } | grep -v 'libtool:' >/dev/null; then \
	  package_gnu='GNU '; \
	else \
	  package_gnu=''; \
	fi; \
	if test -n '$(MSGID_BUGS_ADDRESS)' || test '$(PACKAGE_BUGREPORT)' = '@'PACKAGE_BUGREPORT'@'; then \
	  msgid_bugs_address='$(MSGID_BUGS_ADDRESS)'; \
	else \
	  msgid_bugs_address='$(PACKAGE_BUGREPORT)'; \
	fi; \
	case `$(XGETTEXT) --version | sed 1q | sed -e 's,^[^0-9]*,,'` in \
	  '' | 0.[0-9] | 0.[0-9].* | 0.1[0-5] | 0.1[0-5].* | 0.16 | 0.16.[0-1]*) \
	    $(XGETTEXT) --default-domain=$(DOMAIN) --directory=$(top_srcdir) \
	      --add-comments=TRANSLATORS: $(XGETTEXT_OPTIONS)  \
	      --files-from=$(srcdir)/POTFILES.in \
	      --copyright-holder='$(COPYRIGHT_HOLDER)' \
	      --msgid-bugs-address="$$msgid_bugs_address" \
	    ;; \
	  *) \
	    $(XGETTEXT) --default-domain=$(DOMAIN) --directory=$(top_srcdir) \
	      --add-comments=TRANSLATORS: $(XGETTEXT_OPTIONS)  \
	      --files-from=$(srcdir)/POTFILES.in \
	      --copyright-holder='$(COPYRIGHT_HOLDER)' \
	      --package-name="$${package_gnu}vlc" \
	      --package-version='2.2.2' \
	      --msgid-bugs-address="$$msgid_bugs_address" \
	    ;; \
	esac
	test ! -f $(DOMAIN).po || { \
	  if test -f $(srcdir)/$(DOMAIN).pot; then \
	    sed -f remove-potcdate.sed < $(srcdir)/$(DOMAIN).pot > $(DOMAIN).1po && \
	    sed -f remove-potcdate.sed < $(DOMAIN).po > $(DOMAIN).2po && \
	    if cmp $(DOMAIN).1po $(DOMAIN).2po >/dev/null 2>&1; then \
	      rm -f $(DOMAIN).1po $(DOMAIN).2po $(DOMAIN).po; \
	    else \
	      rm -f $(DOMAIN).1po $(DOMAIN).2po $(srcdir)/$(DOMAIN).pot && \
	      mv $(DOMAIN).po $(srcdir)/$(DOMAIN).pot; \
	    fi; \
	  else \
	    mv $(DOMAIN).po $(srcdir)/$(DOMAIN).pot; \
	  fi; \
	}

# This rule has no dependencies: we don't need to update $(DOMAIN).pot at
# every "make" invocation, only create it when it is missing.
# Only "make $(DOMAIN).pot-update" or "make dist" will force an update.
$(srcdir)/$(DOMAIN).pot:
	$(MAKE) $(DOMAIN).pot-update

# This target rebuilds a PO file if $(DOMAIN).pot has changed.
# Note that a PO file is not touched if it doesn't need to be changed.
$(POFILES): $(srcdir)/$(DOMAIN).pot
	@lang=`echo $@ | sed -e 's,.*/,,' -e 's/\.po$$//'`; \
	if test -f "$(srcdir)/$${lang}.po"; then \
	  test "$(srcdir)" = . && cdcmd="" || cdcmd="cd $(srcdir) && "; \
	  echo "$${cdcmd}$(MSGMERGE_UPDATE) $(MSGMERGE_OPTIONS) --lang=$${lang} $${lang}.po $(DOMAIN).pot"; \
	  cd $(srcdir) \
	    && { case `$(MSGMERGE_UPDATE) --version | sed 1q | sed -e 's,^[^0-9]*,,'` in \
	           '' | 0.[0-9] | 0.[0-9].* | 0.1[0-7] | 0.1[0-7].*) \
	             $(MSGMERGE_UPDATE) $(MSGMERGE_OPTIONS) $${lang}.po $(DOMAIN).pot;; \
	           *) \
	             $(MSGMERGE_UPDATE) $(MSGMERGE_OPTIONS) --lang=$${lang} $${lang}.po $(DOMAIN).pot;; \
	         esac; \
	       }; \
	else \
	  $(MAKE) $${lang}.po-create; \
	fi


install: install-exec install-data
install-exec:
install-data: install-data-no
	if test "$(PACKAGE)" = "gettext-tools"; then \
	  $(mkdir_p) $(DESTDIR)$(gettextsrcdir); \
	  for file in $(DISTFILES.common) Makevars.template; do \
	    $(INSTALL_DATA) $(srcdir)/$$file \
			    $(DESTDIR)$(gettextsrcdir)/$$file; \
	  done; \
	  for file in Makevars; do \
	    rm -f $(DESTDIR)$(gettextsrcdir)/$$file; \
	  done; \
	else \
	  : ; \
	fi
install-data-no: all
install-data-yes: all
	@catalogs='$(CATALOGS)'; \
	for cat in $$catalogs; do \
	  cat=`basename $$cat`; \
	  lang=`echo $$cat | sed -e 's/\.gmo$$//'`; \
	  dir=$(localedir)/$$lang/LC_MESSAGES; \
	  $(mkdir_p) $(DESTDIR)$$dir; \
	  if test -r $$cat; then realcat=$$cat; else realcat=$(srcdir)/$$cat; fi; \
	  $(INSTALL_DATA) $$realcat $(DESTDIR)$$dir/$(DOMAIN).mo; \
	  echo "installing $$realcat as $(DESTDIR)$$dir/$(DOMAIN).mo"; \
	  for lc in '' $(EXTRA_LOCALE_CATEGORIES); do \
	    if test -n "$$lc"; then \
	      if (cd $(DESTDIR)$(localedir)/$$lang && LC_ALL=C ls -l -d $$lc 2>/dev/null) | grep ' -> ' >/dev/null; then \
	        link=`cd $(DESTDIR)$(localedir)/$$lang && LC_ALL=C ls -l -d $$lc | sed -e 's/^.* -> //'`; \
	        mv $(DESTDIR)$(localedir)/$$lang/$$lc $(DESTDIR)$(localedir)/$$lang/$$lc.old; \
	        mkdir $(DESTDIR)$(localedir)/$$lang/$$lc; \
	        (cd $(DESTDIR)$(localedir)/$$lang/$$lc.old && \
	         for file in *; do \
	           if test -f $$file; then \
	             ln -s ../$$link/$$file $(DESTDIR)$(localedir)/$$lang/$$lc/$$file; \
	           fi; \
	         done); \
	        rm -f $(DESTDIR)$(localedir)/$$lang/$$lc.old; \
	      else \
	        if test -d $(DESTDIR)$(localedir)/$$lang/$$lc; then \
	          :; \
	        else \
	          rm -f $(DESTDIR)$(localedir)/$$lang/$$lc; \
	          mkdir $(DESTDIR)$(localedir)/$$lang/$$lc; \
	        fi; \
	      fi; \
	      rm -f $(DESTDIR)$(localedir)/$$lang/$$lc/$(DOMAIN).mo; \
	      ln -s ../LC_MESSAGES/$(DOMAIN).mo $(DESTDIR)$(localedir)/$$lang/$$lc/$(DOMAIN).mo 2>/dev/null || \
	      ln $(DESTDIR)$(localedir)/$$lang/LC_MESSAGES/$(DOMAIN).mo $(DESTDIR)$(localedir)/$$lang/$$lc/$(DOMAIN).mo 2>/dev/null || \
	      cp -p $(DESTDIR)$(localedir)/$$lang/LC_MESSAGES/$(DOMAIN).mo $(DESTDIR)$(localedir)/$$lang/$$lc/$(DOMAIN).mo; \
	      echo "installing $$realcat link as $(DESTDIR)$(localedir)/$$lang/$$lc/$(DOMAIN).mo"; \
	    fi; \
	  done; \
	done

install-strip: install

installdirs: installdirs-exec installdirs-data
installdirs-exec:
installdirs-data: installdirs-data-no
	if test "$(PACKAGE)" = "gettext-tools"; then \
	  $(mkdir_p) $(DESTDIR)$(gettextsrcdir); \
	else \
	  : ; \
	fi
installdirs-data-no:
installdirs-data-yes:
	@catalogs='$(CATALOGS)'; \
	for cat in $$catalogs; do \
	  cat=`basename $$cat`; \
	  lang=`echo $$cat | sed -e 's/\.gmo$$//'`; \
	  dir=$(localedir)/$$lang/LC_MESSAGES; \
	  $(mkdir_p) $(DESTDIR)$$dir; \
	  for lc in '' $(EXTRA_LOCALE_CATEGORIES); do \
	    if test -n "$$lc"; then \
	      if (cd $(DESTDIR)$(localedir)/$$lang && LC_ALL=C ls -l -d $$lc 2>/dev/null) | grep ' -> ' >/dev/null; then \
	        link=`cd $(DESTDIR)$(localedir)/$$lang && LC_ALL=C ls -l -d $$lc | sed -e 's/^.* -> //'`; \
	        mv $(DESTDIR)$(localedir)/$$lang/$$lc $(DESTDIR)$(localedir)/$$lang/$$lc.old; \
	        mkdir $(DESTDIR)$(localedir)/$$lang/$$lc; \
	        (cd $(DESTDIR)$(localedir)/$$lang/$$lc.old && \
	         for file in *; do \
	           if test -f $$file; then \
	             ln -s ../$$link/$$file $(DESTDIR)$(localedir)/$$lang/$$lc/$$file; \
	           fi; \
	         done); \
	        rm -f $(DESTDIR)$(localedir)/$$lang/$$lc.old; \
	      else \
	        if test -d $(DESTDIR)$(localedir)/$$lang/$$lc; then \
	          :; \
	        else \
	          rm -f $(DESTDIR)$(localedir)/$$lang/$$lc; \
	          mkdir $(DESTDIR)$(localedir)/$$lang/$$lc; \
	        fi; \
	      fi; \
	    fi; \
	  done; \
	done

# Define this as empty until I found a useful application.
installcheck:

uninstall: uninstall-exec uninstall-data
uninstall-exec:
uninstall-data: uninstall-data-no
	if test "$(PACKAGE)" = "gettext-tools"; then \
	  for file in $(DISTFILES.common) Makevars.template; do \
	    rm -f $(DESTDIR)$(gettextsrcdir)/$$file; \
	  done; \
	else \
	  : ; \
	fi
uninstall-data-no:
uninstall-data-yes:
	catalogs='$(CATALOGS)'; \
	for cat in $$catalogs; do \
	  cat=`basename $$cat`; \
	  lang=`echo $$cat | sed -e 's/\.gmo$$//'`; \
	  for lc in LC_MESSAGES $(EXTRA_LOCALE_CATEGORIES); do \
	    rm -f $(DESTDIR)$(localedir)/$$lang/$$lc/$(DOMAIN).mo; \
	  done; \
	done

check: all

info dvi ps pdf html tags TAGS ctags CTAGS ID:

mostlyclean:
	rm -f remove-potcdate.sed
	rm -f stamp-poT
	rm -f core core.* $(DOMAIN).po $(DOMAIN).1po $(DOMAIN).2po *.new.po
	rm -fr *.o

clean: mostlyclean

distclean: clean
	rm -f Makefile Makefile.in POTFILES *.mo

maintainer-clean: distclean
	@echo "This command is intended for maintainers to use;"
	@echo "it deletes files that may require special tools to rebuild."
	rm -f stamp-po $(GMOFILES)

distdir = $(top_builddir)/$(PACKAGE)-$(VERSION)/$(subdir)
dist distdir:
	$(MAKE) update-po
	@$(MAKE) dist2
# This is a separate target because 'update-po' must be executed before.
dist2: stamp-po $(DISTFILES)
	dists="$(DISTFILES)"; \
	if test "$(PACKAGE)" = "gettext-tools"; then \
	  dists="$$dists Makevars.template"; \
	fi; \
	if test -f $(srcdir)/$(DOMAIN).pot; then \
	  dists="$$dists $(DOMAIN).pot stamp-po"; \
	fi; \
	if test -f $(srcdir)/ChangeLog; then \
	  dists="$$dists ChangeLog"; \
	fi; \
	for i in 0 1 2 3 4 5 6 7 8 9; do \
	  if test -f $(srcdir)/ChangeLog.$$i; then \
	    dists="$$dists ChangeLog.$$i"; \
	  fi; \
	done; \
	if test -f $(srcdir)/LINGUAS; then dists="$$dists LINGUAS"; fi; \
	for file in $$dists; do \
	  if test -f $$file; then \
	    cp -p $$file $(distdir) || exit 1; \
	  else \
	    cp -p $(srcdir)/$$file $(distdir) || exit 1; \
	  fi; \
	done

update-po: Makefile
	$(MAKE) $(DOMAIN).pot-update
	test -z "$(UPDATEPOFILES)" || $(MAKE) $(UPDATEPOFILES)
	$(MAKE) update-gmo

# General rule for creating PO files.

.nop.po-create:
	@lang=`echo $@ | sed -e 's/\.po-create$$//'`; \
	echo "File $$lang.po does not exist. If you are a translator, you can create it through 'msginit'." 1>&2; \
	exit 1

# General rule for updating PO files.

.nop.po-update:
	@lang=`echo $@ | sed -e 's/\.po-update$$//'`; \
	if test "$(PACKAGE)" = "gettext-tools"; then PATH=`pwd`/../src:$$PATH; fi; \
	tmpdir=`pwd`; \
	echo "$$lang:"; \
	test "$(srcdir)" = . && cdcmd="" || cdcmd="cd $(srcdir) && "; \
	echo "$${cdcmd}$(MSGMERGE) $(MSGMERGE_OPTIONS) --lang=$$lang $$lang.po $(DOMAIN).pot -o $$lang.new.po"; \
	cd $(srcdir); \
	if { case `$(MSGMERGE) --version | sed 1q | sed -e 's,^[^0-9]*,,'` in \
	       '' | 0.[0-9] | 0.[0-9].* | 0.1[0-7] | 0.1[0-7].*) \
	         $(MSGMERGE) $(MSGMERGE_OPTIONS) -o $$tmpdir/$$lang.new.po $$lang.po $(DOMAIN).pot;; \
	       *) \
	         $(MSGMERGE) $(MSGMERGE_OPTIONS) --lang=$$lang -o $$tmpdir/$$lang.new.po $$lang.po $(DOMAIN).pot;; \
	     esac; \
	   }; then \
	  if cmp $$lang.po $$tmpdir/$$lang.new.po >/dev/null 2>&1; then \
	    rm -f $$tmpdir/$$lang.new.po; \
	  else \
	    if mv -f $$tmpdir/$$lang.new.po $$lang.po; then \
	      :; \
	    else \
	      echo "msgmerge for $$lang.po failed: cannot move $$tmpdir/$$lang.new.po to $$lang.po" 1>&2; \
	      exit 1; \
	    fi; \
	  fi; \
	else \
	  echo "msgmerge for $$lang.po failed!" 1>&2; \
	  rm -f $$tmpdir/$$lang.new.po; \
	fi

$(DUMMYPOFILES):

update-gmo: Makefile $(GMOFILES)
	@:

# Recreate Makefile by invoking config.status. Explicitly invoke the shell,
# because execution permission bits may not work on the current file system.
# Use /bin/sh, which is the shell determined by autoconf for the use by its
# scripts, not $(SHELL) which is hardwired to /bin/sh and may be deficient.
Makefile: Makefile.in.in Makevars $(top_builddir)/config.status POTFILES.in LINGUAS
	cd $(top_builddir) \
	  && /bin/sh ./config.status $(subdir)/$@.in po-directories

force:

# Tell versions [3.59,3.63) of GNU make not to export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
