#!/usr/bin/env nextflow

params.str = "World!"

process sayHello {
  output: 
    file "output.txt" 
  script:
    """
    echo 'Hello ${params.str}' > output.txt
    """
}

