#!/usr/bin/env nextflow

params.str = 'World!'
params.s3bucket = 's3://hutch.cloud.dev'


process sayHello {
    publishDir = "${params.s3bucket}"

    output:
      file 'output.txt'
    script:
      """
      printf 'Hello ${params.str}' > output.txt
      """
}


