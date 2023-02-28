#file :like this format :chr10_100000000_100005000	chr10_100005000_100010000
#gz_file:like this format: 1\tchr1_0_5000
#out_file:

#make dict means that make genome size(bin ID with raw_count)
import sys
import cooler

union_file = sys.argv[1]
gz_file = sys.argv[2]
cc_file = sys.argv[3]
out_file = sys.argv[4]

def make_dict(gz_file):
    gz_bin={}
    l=[]
    with open (gz_file,"r") as f:
        for line in f:
            l = line.split("\t")
            k = l[1].strip()
            v = l[0].strip()
            gz_bin[k] = v
    return gz_bin

#translate bin ID with raw_count to a dict:
def dict_count_bin(cc_file):
    cc_dict = {}
    l = []
    with open (cc_file, "r") as f:
        for line in f:
            l = line.split("\t")
            k = l[0].strip()
            v = l[1].strip()
            cc_dict[k] = v 
    return cc_dict

def get_key(union_file,gz_file,loop_bin):
    gz_bin = make_dict(gz_file)
    with open (union_file,"r") as f , open (loop_bin,"w") as fo:
        for line in f:
            l = line.split("\t")
            pos1 = l[0].strip()
            pos2 = l[1].strip()
            try:
                key_out = gz_bin[pos1] + "_" + gz_bin[pos2] + "\n"
                fo.write(key_out)
            except KeyError as e:
                print("Warning:" + str(e))
                        
def get_raw_count(loop_bin,cc_file,out_file):
    cc_dict = dict_count_bin(cc_file)
    with open (loop_bin,"r") as f , open (out_file,"w") as fo:
        for line in f:
            l = line.split("\t")
            p = l[0].strip()
            if p not in cc_dict:
                key = str(0) + "\n"
                fo.write(key)
            else:
                key = cc_dict[p] + "\n"
                fo.write(key)


get_key(union_file,gz_file,"tmp")
get_raw_count("tmp",cc_file,out_file)
