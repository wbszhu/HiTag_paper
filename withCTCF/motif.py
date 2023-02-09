import click

@click.command("python motif.py anchors anchorMotifbed")
@click.argument("anchors")
@click.argument("anchormotifbed")
def getAnchor_direct(anchormotifbed, anchors):
    out_dict = ad_dict(anchormotifbed)
    type1 = 0
    type2 = 0
    type3 = 0
    type4 = 0
    with open(anchors, "r") as f1:
        for line in f1:
            anchor = line.split()
            direct1 = out_dict.get(anchor[0])
            direct2 = out_dict.get(anchor[1])
            if direct1 != None and direct2 != None:
                if "+" in direct1 and "-" in direct2:
                    type1 += 1
                elif "-" in direct1 and "+" in direct2:
                    type2 +=1
                elif "-" in direct1 and "-" in direct2:
                    type3 += 1
                else:
                    type4 += 1
        print("+-:" + str(type1) + "\n" + "-+:" + str(type2) + "\n" + "--:" + str(type3) + "\n" + "++:" + str(type4))
                    


def ad_dict(anchorMotifbed):
    ad_dict = {}
    with open(anchorMotifbed, "r") as f:
        for line in f:
            items = line.split()
            key, values = items[0], items[1]
            ad_dict.setdefault(key,[]).extend(values)
        return ad_dict



if __name__ == "__main__":
    getAnchor_direct()
