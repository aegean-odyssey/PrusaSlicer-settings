PROJECT = PrusaSlicer-settings
VENDORS = Monoprice Ultimaker

.PHONY: all clean $(VENDORS)

.PRECIOUS: $(addsuffix -vendor.zip,$(VENDORS))

all: $(VENDORS)

$(VENDORS): %: %-vendor.sha1.txt

%-vendor.sha1.txt: %-vendor.zip
	sha1sum -b $< >$@

%-vendor.zip: %/ | %-vendor
	cp -a $* $|/
	mv $|/$*/$*.idx $|/
	mv $|/$*/$*.ini $|/
	rm -f $@
	grep -m1 '^[0-9]' $|/$*.idx | zip -z -m -r $@ $| -x \*~ .\*

%-vendor:
	mkdir $@

clean:
	rm -f $(addsuffix -vendor.sha1.txt,$(VENDORS))
	rm -f $(addsuffix -vendor.zip,$(VENDORS))
	rm -fR $(addsuffix -vendor,$(VENDORS))
