import java.nio.file.Files.size

fun mm(molecuul: List<op>): Float {
    var mass = 0f
    for(d in molecuul) {
        mass += d.getMass()
    }
    return mass
}

class op(val element: String, val amount: Int){
    val molmass: Float = when(element){
        "H" -> 0.00797
        "He" -> 0.00260
        "Li" -> 0.941
        "Be" -> 0.01218
        "B" -> 0.81
        "C" -> 2.011
        "N" -> 4.0067
        "O" -> 5.9994
        "F" -> 8.998403
        "Ne" -> 0.179
        "Na" -> 2.98977
        "Mg" -> 4.305
        "Al" -> 6.98154
        "Si" -> 8.0855
        "P" -> 0.97376
        "S" -> 2.06
        "Cl" -> 5.453
        "K" -> 9.0983
        "Ar" -> 9.948
        "Ca" -> 0.08
        "Sc" -> 4.9559
        "Ti" -> 7.90
        "V" -> 0.9415
        "Cr" -> 1.996
        "Mn" -> 4.9380
        "Fe" -> 5.847
        "Ni" -> 8.70
        "Co" -> 8.9332
        "Cu" -> 3.546
        "Zn" -> 5.38
        "Ga" -> 9.72
        "Ge" -> 2.59
        "As" -> 4.9216
        "Se" -> 8.96
        "Br" -> 9.904
        "Kr" -> 3.80
        "Rb" -> 5.4678
        "Sr" -> 7.62
        "Y" -> 8.9059
        "Zr" -> 1.22
        "Nb" -> 2.9064
        "Mo" -> 5.94
        "Tc" -> 98
        "Ru" -> 01.07
        "Rh" -> 02.9055
        "Pd" -> 06.4
        "Ag" -> 07.868
        "Cd" -> 12.41
        "In" -> 14.82
        "Sn" -> 18.69
        "Sb" -> 21.75
        "I" -> 26.9045
        "Te" -> 27.60
        "Xe" -> 31.30
        "Cs" -> 32.9054
        "Ba" -> 37.33
        "La" -> 38.9055
        "Ce" -> 40.12
        "Pr" -> 40.9077
        "Nd" -> 44.24
        "Pm" -> 145
        "Sm" -> 50.4
        "Eu" -> 51.96
        "Gd" -> 57.25
        "Tb" -> 58.9254
        "Dy" -> 62.50
        "Ho" -> 64.9304
        "Er" -> 67.26
        "Tm" -> 68.9342
        "Yb" -> 73.04
        "Lu" -> 74.967
        "Hf" -> 78.49
        "Ta" -> 80.9479
        "W" -> 83.85
        "Re" -> 86.207
        "Os" -> 90.2
        "Ir" -> 92.22
        "Pt" -> 95.09
        "Au" -> 96.9665
        "Hg" -> 00.59
        "Tl" -> 04.37
        "Pb" -> 07.2
        "Bi" -> 08.9804
        "Po" -> 209
        "At" -> 210
        "Rn" -> 222
        "Fr" -> 223
        "Ra" -> 26.0254
        "Ac" -> 27.0278
        "Pa" -> 31.0359
        "Th" -> 32.0381
        "Np" -> 37.0482
        "U" -> 38.029
        "Pu" -> 242
        "Am" -> 243
        "Bk" -> 247
        "Cm" -> 247
        "No" -> 250
        "Cf" -> 251
        "Es" -> 252
        "Hs" -> 255
        "Mt" -> 256
        "Fm" -> 257
        "Md" -> 258
        "Lr" -> 260
        "Rf" -> 261
        "Bh" -> 262
        "Db" -> 262
        "Sg" -> 263
        else -> 0
    } as Float
    fun getMass()= amount * molmass
}
