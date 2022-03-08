DOCKERCMD=docker
DOCKERBUILD=$(DOCKERCMD) build
DOCKERRUN=$(DOCKERCMD) run
DOCKERCP=$(DOCKERCMD) cp
DOCKERRM=$(DOCKERCMD) rm

# Docker section
docker: docker-alias-rm docker-build docker-run

docker-build:
	$(DOCKERBUILD) --no-cache -t mpermperpisang/serenity .

docker-run:
	$(DOCKERRUN) --name serenity_test mpermperpisang/serenity

docker-cp:
	$(DOCKERCP) serenity_test:/project/serenity-automation .

docker-alias-rm:
	$(DOCKERRM) -f serenity_test

folder:
	@mkdir -p 'report'
