#!/bin/sh
cd articles
review-preproc -r --tabwidth=2 ./*.re
review-pdfmaker config.yml
