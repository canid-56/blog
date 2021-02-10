knitr::render_jekyll()

local({
    a = commandArgs(TRUE)
    
    knitr::opts_chunk$set(
        # fig.path = sprintf('figure/tmp/%s/', digest::digest(a[1]))
        fig.path = sprintf('figure/%s/', gsub("\\..+$","",basename(a[1])))
    )
    
    knitr::opts_knit$set(
        base.url = '/blog/',
        width=70
    )
    
    knitr::knit(a[1], a[2], quiet=TRUE, encoding='UTF-8', envir=.GlobalEnv)
})