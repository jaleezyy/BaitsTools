#!/usr/bin/env ruby

#-----------------------------------------------------------------------------------------------
# testlib
# Michael G. Campana, 2017-2018
# Smithsonian Conservation Biology Institute
#-----------------------------------------------------------------------------------------------

require_relative 'baitslib'

#====DUMMY OPTIONS BLOCK========================================================================
class Option
	attr_accessor :rna, :no_Ns
	def initialize(rna = false, noNs = false)
		@rna = rna
		@no_Ns = noNs
	end
end
#====TESTED METHODS=============================================================================
def chi_prob(test, df)
# Probability density function of chi distribution
	if test > 0.0
		num = (test ** (df/2.0 - 1.0)) * Math.exp(test/2.0 * -1.0)
		denom = (2 ** (df/2.0)) * Math.gamma(df/2.0)
		return num/denom
	else
		return 0.0
	end
end
#====TEST CONTROL CODE==========================================================================
$options = Option.new
@exit = ""
while @exit == ""
	print "Enter chi-squared test statistic\n"
	test = gets.chomp.to_f
	print "Enter degrees of freedom\n"
	df = gets.chomp.to_f
	print chi_prob(test, df).to_s + "\n"
	print "Exit? Return for no. Any string for yes.\n"
	@exit = gets.chomp
end
