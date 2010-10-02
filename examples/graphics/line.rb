# encoding: utf-8
#
# The very first Prawn example.  Here for nostalgia's sake.
#
require File.expand_path(File.join(File.dirname(__FILE__),
                                   %w[.. example_helper]))
 
pdf = Prawn::Document.new   
pdf.line_width = 10    

[[100,741,100,641], 
 [100,691,150,691],
 [150,741,150,641],
 [200,741,200,641],   
 [100,600,100,500],
 [100,600,150,550],
 [100,550,150,550],
 [175,600,175,500], 
 [175,600,225,550], 
 [175,550,225,550],
 [175,550,225,500],
 [275,600,250,500],
 [275,600,300,500],   
 [250,550,300,550],
 [315,600,350,500],
 [350,500,365,550], 
 [365,550,380,500],
 [380,500,415,600], 
 [430,600,430,500],
 [430,600,465,500],
 [465,600,465,500]].each { |points| pdf.stroke_line(*points) }

pdf.render_file "lines.pdf"
