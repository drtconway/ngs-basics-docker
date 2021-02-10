FROM ubuntu:groovy

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt update && \
    apt install -y \
        samtools \
        bcftools \
        bedtools \
        fastqc \
        multiqc \
        tabix \
        tzdata \
        wget

RUN mkdir /data
WORKDIR /data
