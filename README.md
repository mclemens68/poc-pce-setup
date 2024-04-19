# poc-pce-setup
Some useful steps for setting up a SaaS PCE in prep for a POC

Things to do when starting a POC:

	1) Create Firewall coexistence rule
	2) Turn on Core Services Detection and Scanner Detection
	3) Delete the default rules
	4) Delete the pre-canned labels
	5) Import starter labels
     workloader label-import workloader-label-import-poc.csv --update-pce --no-prompt
	6) Import ignored-ports service
     workloader svc-import workloader-svc-import-ignored-ports.csv --update-pce --no-prompt
	7) Import starter iplists
     workloader ipl-import workloader-ipl-import-poc.csv --update-pce --no-prompt
	8) Edit Label Settings to enable Icon + Prefix
	9) Provision all of the above

When sending intro email to customer, include this:

Also, once you have access to the PCE you can go to the below link to create an account in our support portal (create & track support cases, access to knowledge base, etc...).

https://support.illumio.com/portal/signup/index.html
