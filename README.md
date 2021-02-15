# Blog page source codes

[Blog page here](https://canid-56.github.io/blog/)
[Local page here](http://127.0.0.1:4000/blog/)

## commands

serve local

```bash
bundle exec jeykyll serve
```

rmarkdown

```r
servr::jekyll(serve=F, input="_source", output="_posts")
```

jupyter

```bash
_source/ipynb2jekyll.sh _source/FILENAME.ipynb
```