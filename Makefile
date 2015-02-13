REBAR:=rebar

.PHONY: all test

all: test

test:
	@echo
	@if test "" = "${TRAVIS_OTP_RELEASE}" ; then \
	    echo "ERROR: Not an erlang language .travis.yml"; \
	    exit 1; \
	fi
	@if test -x "./rebar" ; then \
	    ./rebar --version ; \
	else \
	    echo "ERROR: Failed to fetch ./rebar via trevor" ; \
	    exit 1; \
	fi
	@if test -x "./relx" ; then \
	    echo "relx `./relx --version`" ; \
	else \
	    echo "ERROR: Failed to fetch ./relx via trevor" ; \
	    exit 1 ; \
	fi
	@if [[ -f "${TRAVIS_OTP_RELEASE}.plt" ]]; then  \
	    echo "Plt: ${TRAVIS_OTP_RELEASE}.plt" ; \
	else \
	    echo "Failed to fetch ./plt for this supported ${TRAVIS_OTP_RELEASE} environment" ; \
	    exit 1 ; \
	fi
	@echo
	@exit 0
    

