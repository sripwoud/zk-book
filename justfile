# build and watch
dev:
    watchexec -r --exts md,ipynb,yml just build

# build
build:
    jupyter-book build --path-output . docs