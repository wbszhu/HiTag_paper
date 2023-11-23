import sys
import cooler

cool_file = sys.argv[1]
out_count = sys.argv[2]
c = cooler.Cooler(cool_file) 
c.pixels()[:].to_csv(out_count)
