# machine-learning-general-purpose
The GitHub repo for a Dockerhub image that will be updated as new technology is required.

If you are using a Microsoft Dev Container, you may want to add existing extensions. Note the `customizations:` section below:

`.devcontainer/devcontainer.json`
```
// For format details, see https://aka.ms/devcontainer.json. For config options, see the
// README at: https://github.com/devcontainers/templates/tree/main/src/docker-existing-dockerfile
{
	"name": "Existing Dockerfile",
	"build": {
		// Sets the run context to one level up instead of the .devcontainer folder.
		"context": "..",
		// Update the 'dockerFile' property if you aren't using the standard 'Dockerfile' filename.
		"dockerfile": "../Dockerfile"
	},
	// Features to add to the dev container. More info: https://containers.dev/features.
	// "features": {},

	// Use 'forwardPorts' to make a list of ports inside the container available locally.
	// "forwardPorts": [],

	// Uncomment the next line to run commands after the container is created.
	// "postCreateCommand": "cat /etc/os-release",

	// Configure tool-specific properties.
	"customizations": {
		"vscode": {
		  "extensions": [
			"ms-azuretools.vscode-docker",
			"ms-toolsai.jupyter",
			"ms-python.python"
			]
		}
	  }

	// Uncomment to connect as an existing user other than the container default. More info: https://aka.ms/dev-containers-non-root.
	// "remoteUser": "devcontainer"
}
```