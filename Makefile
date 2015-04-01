export PATH := $(PATH):/usr/local/opt/bind/sbin/

zonefiles := $(wildcard db.*) 
zones := $(foreach zonefile,$(zonefiles),$(subst db.,,$(zonefile)))

test: FORCE $(zonefiles)
	for zone in $(zones); do \
		named-checkzone -i local $$zone db.$$zone ; \
	done

FORCE:
