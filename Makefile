PROJECT = PrusaSlicer-settings
VENDORS = Monoprice Ultimaker

.PHONY: all $(VENDORS)

all: $(VENDORS)

$(VENDORS): %: %-vendor.zip

%-vendor.zip: %/ | %-vendor
	cp -a $* $|/
	mv $|/$*/$*.idx $|/
	mv $|/$*/$*.ini $|/
	rm -f $@
	grep -m1 '^[0-9]' $|/$*.idx | zip -z -m -r $@ $| -x \*~ .\*

%-vendor:
	mkdir $@
