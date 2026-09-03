#!/usr/bin/env python

import argparse

def get_args():
    parser = argparse.ArgumentParser(description="Script for parsing SAM file")

    parser.add_argument("-s", "--sam", help="Input alignment SAM file")

    return parser.parse_args()

def extract_mapping(sam_file):
    mapped, unmapped = 0, 0

    with open(sam_file, "r") as sam:
        for line in sam:
            # Skip header lines and grab flag column
            if line[0] == "@":
                continue
            fields = line.split("\t")
            flag = fields[1]

            # Skip secondary alignments
            if (int(flag) & 256) == 256:
                continue

            # Check segment unmapped bit
            if (int(flag) & 4) != 4:
                mapped += 1
            else:
                unmapped += 1
    print(f"# of mapped reads: {mapped}, # of unmapped reads: {unmapped}")

args = get_args()
extract_mapping(args.sam)