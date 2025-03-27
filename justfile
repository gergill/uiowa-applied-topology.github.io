# Initialize submodules
init:
	git submodule update --init --recursive

# Download the most recent version of the blowfish theme
update-blowfish:
	git submodule update --remote --merge themes/blowfish

# Build serve a local version of the website
serve:
	hugo serve
