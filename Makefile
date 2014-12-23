# This file is part of Oaklisp.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# The GNU GPL is available at http://www.gnu.org/licenses/gpl.html
# or from the Free Software Foundation, 59 Temple Place - Suite 330,
# Boston, MA 02111-1307, USA

prefix=/usr/local


.PHONY: all install clean realclean newworld docs

all:
	$(MAKE) -C src $@ prefix=$(prefix)

install clean realclean:
	$(MAKE) -C src $@ prefix=$(prefix)
	$(MAKE) -C doc $@ prefix=$(prefix)
	$(MAKE) -C man $@ prefix=$(prefix)

newworld:
	$(MAKE) -C src $@

docs:
	$(MAKE) -C doc all
	$(MAKE) -C man all
