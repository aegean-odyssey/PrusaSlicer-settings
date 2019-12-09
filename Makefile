PROJECT = PrusaSlicer-settings
VENDORS = Monoprice Ultimaker

URL = http://github.com/aegean-odyssey/PrusaSlicer-settings/raw/master
REPO = live
#MFGR =

CONFIGS_URL = ${URL}/${REPO}/${MFGR}
CHANGES_URL = ${CONFIGS_URL}/changelog.html

# use the path to the Makefile as root 
ZD := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

.PHONY : all clean $(VENDORS) post

all : $(VENDORS)

clean :
	rm -f *~ .*~

$(VENDORS) : ${ZD}${REPO}
	mkdir -p "$</$@"
	-cp -u $@*.png "$</$@/"  
	-cp -u $@*.jpg "$</$@/"  
	-cp -u $@*.stl "$</$@/"  
	$(MAKE) -C $</$@ -f ${ZD}Makefile MFGR=$@ post
	cd "$</$@" && zip ../$@-vendors.zip * -i '$@*' -x '*.md'

${ZD}${REPO} :
	mkdir -p "$@"

post : latest.ini changelog.md index.idx

ifeq (${MAKECMDGOALS},post)
$(eval $(shell grep -m 1 '^config_version\W=\W' ${ZD}${MFGR}.ini))
FN = ${config_version}.ini
endif

latest.ini : ${ZD}${MFGR}.ini
	cp "$<" "${FN}"
	@sed -i -e 's!__CONFIG_UPDATE_URL__!${CONFIGS_URL}!' "${FN}" 
	@sed -i -e 's!__CHANGELOG_URL__!${CHANGES_URL}!' "${FN}" 
	ln -sfn "${FN}" "$(<F)"
	ln -sfn "${FN}" "$(@F)"

changelog.md : ${ZD}${MFGR}.md
	cp "$<" "$@"

index.idx : ${ZD}${MFGR}.idx
	cp "$<" "$@"
