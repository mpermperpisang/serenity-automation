DOCKERCMD=docker
DOCKERBUILD=$(DOCKERCMD) build
DOCKERRUN=$(DOCKERCMD) run
DOCKERCP=$(DOCKERCMD) cp
DOCKERRM=$(DOCKERCMD) rm
DOCKERRMI=$(DOCKERCMD) rmi

# Docker section
docker: docker-alias-rm docker-build docker-run
docker-rm: container-rm images-rm

docker-build:
	$(DOCKERBUILD) --no-cache -t mpermperpisang/serenity .
	@echo "Successfully build mpermperpisang/serenity"

docker-run:
	$(DOCKERRUN) --name serenity_test mpermperpisang/serenity
	@echo "Successfully run mpermperpisang/serenity"

docker-cp:
	$(DOCKERCP) serenity_test:/project/serenity-automation .
	@echo "Successfully copy paste serenity_test content"

docker-alias-rm:
	$(DOCKERRM) -f serenity_test
	@echo "Successfully remove serenity_test"

container-rm:
	@$(DOCKERRM) -vf $$(docker ps -aq)
	@echo "Docker container successfully removed"

images-rm:
	@$(DOCKERRMI) -f $$(docker images -aq)
	@echo "Docker images successfully removed"

folder:
	@mkdir -p 'report'
