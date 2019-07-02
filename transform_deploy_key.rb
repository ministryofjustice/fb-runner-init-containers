#!/usr/bin/env ruby

input_file = ARGV[0]
output_file = ARGV[1]

string = File.open(input_file).read.gsub(/(-----BEGIN RSA PRIVATE KEY-----) /, "\\1\n").gsub(/ (-----END RSA PRIVATE KEY-----)/, "\n\\1").gsub(/(\S{64}) /, "\\1\n")

File.open(output_file, "w").write(string)
