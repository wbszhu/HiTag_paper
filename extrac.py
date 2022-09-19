import cooler
import matplotlib.pyplot as plt
import numpy as np
import click

@click.command("-regf, -coolf")
@click.argument("regf")
@click.argument("coolf")
def merge_reg_m(regf,coolf):
    regions = regf2list(regf)
    mat = reg2m(regions, coolf)
    np.savetxt('out.csv', mat, delimiter=',')
    plt.matshow(np.log10(mat),vmin=0,vmax=2,cmap = 'YlOrRd')
    plt.colorbar(label = "log10 ICed Hi-C")    
    plt.show()
    plt.savefig("out.pdf")


def reg2m(regions, coolf):
    c = cooler.Cooler(f'{coolf}::/resolutions/10000')
    resolution = c.binsize
    mat_res = c.matrix(balance=True).fetch(regions[0])
    mat_res1 = np.nan_to_num(mat_res, nan=0.0)
    for r in regions[1:]:
        mat_r = c.matrix(balance=True).fetch(r)
        mat = np.nan_to_num(mat_r, nan=0.0)
        mat_res1 += mat
    return mat_res1


def regf2list(regf):
    reg = []
    with open (regf, "rt") as f:
        for line in f:
            line1 = line.strip("\n")
            reg.append(str(line1))
        return reg


if __name__ == "__main__":
    merge_reg_m()
