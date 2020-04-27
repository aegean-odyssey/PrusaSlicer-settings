PROJECT = PrusaSlicer-settings
VENDORS = Monoprice Ultimaker

URL = https://raw.githubusercontent.com/aegean-odyssey/${PROJECT}/master

REPO = live
#MFGR =

CONFIGS_URL = ${URL}/${REPO}/${MFGR}
CHANGES_URL = ${CONFIGS_URL}/changelog.md?lang=%1%

# use the path to the Makefile as root 
ZD := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

.PHONY : all clean $(VENDORS) post touch

all : $(VENDORS)

clean :
	find . -name '*~' -exec rm -f '{}' \;

touch :
	find . -name '*.idx' -exec touch '{}' \;
	find . -name '*.ini' -exec touch '{}' \;

$(VENDORS) : ${ZD}${REPO}
	mkdir -p "$</$@/$@/"
	-cp -u $@/*.png $@/*.stl $@/*.svg "$</$@/$@/"  
	$(MAKE) -C $</$@ -f ${ZD}Makefile MFGR=$@ post
	rm -f "$</$@-vendors.zip"
	cd "$</$@" && zip -r ../$@-vendors.zip * -i '$@*' -x '*.md'

${ZD}${REPO} :
	mkdir -p "$@"

post : latest.ini changelog.md index.idx

ifeq (${MAKECMDGOALS},post)
$(eval $(shell grep -m 1 '^config_version\W=\W' ${ZD}${MFGR}/${MFGR}.ini))
FN = ${config_version}.ini
endif

latest.ini : ${ZD}${MFGR}/${MFGR}.ini
	cp "$<" "${FN}"
	@sed -i -e 's!__CONFIG_UPDATE_URL__!${CONFIGS_URL}!' "${FN}" 
	@sed -i -e 's!__CHANGELOG_URL__!${CHANGES_URL}!' "${FN}" 
	ln -sfn "${FN}" "$(<F)"
	ln -sfn "${FN}" "$(@F)"

index.idx : ${ZD}${MFGR}/${MFGR}.idx
	cp "$<" "$@"
	ln -sfn "$@" "$(<F)"

changelog.md : ${ZD}${MFGR}/${MFGR}.md
	cp "$<" "$@"
