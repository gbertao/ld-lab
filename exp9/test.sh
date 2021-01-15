#!/bin/bash
diff -y <(hexdump main1.o) <(hexdump main2.o)
