# Build the website
build:
	hugo build

# Initialize submodules
init:
	git submodule update --init --recursive

# Init tailwind css
[working-directory: 'themes/blowfish']
init-tailwind:
    npm install

# Compile tailwind css
update-tailwind: init-tailwind
	tailwindcss -c ./themes/blowfish/tailwind.config.js -i ./themes/blowfish/assets/css/main.css -o ./assets/css/compiled/main.css --jit

# Download the most recent version of the blowfish theme
update-blowfish:
	git submodule update --remote --merge themes/blowfish

# Start a development server for working on the website
serve:
	hugo serve
