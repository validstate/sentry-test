test: clean
	hack/run-test.sh

clean:
	rm -f {sentry,validator}-{a,b}.log
	rm -rf {sentry,validator}-{a,b}/data
	rm -f {sentry,validator}-{a,b}/addrbook.json
	rm -f sentry-{a,b}/priv_validator.json
	git checkout validator-{a,b}/priv_validator.json
