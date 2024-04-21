# poc-pce-setup
Some useful steps for setting up a SaaS PCE in prep for a POC

Things to do when starting a POC:

	1) Create Firewall coexistence rule and Provision
	2) Turn on Core Services Detection and Scanner Detection
	3) Edit Label Settings to enable Icon + Prefix
	4) Delete the default rules
	5) Delete the pre-canned labels
	6) Import starter labels
       workloader label-import workloader-label-import-poc.csv --update-pce --no-prompt
	7) Import ignored-ports service
       workloader svc-import workloader-svc-import-ignored-ports.csv --update-pce --no-prompt
	8) Import starter iplists
       workloader ipl-import workloader-ipl-import-poc.csv --update-pce --no-prompt
	9) Provision all of the above

poc-pce-setup.sh will do 4-9, just pass in the workloader pce name as an argument

When sending intro email to customer, include this:

Also, once you have access to the PCE you can go to the below link to create an account in our support portal (create & track support cases, access to knowledge base, etc...).

https://support.illumio.com/portal/signup/index.html
