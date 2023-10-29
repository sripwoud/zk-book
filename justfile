# build and watch
dev:
    watchexec -r --exts md,ipynb,yml jupyter-book build .

# build
build:
    jupyter-book build .