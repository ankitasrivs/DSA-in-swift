
/*
* * * * 
* * * * 
* * * * 
* * * * 
*/


func star1(i: Int) {
    for k in 0..<i {
        for j in 0..<i {
            print("*", terminator: " ")
        }
        print()
    }
}
star1(i: 4)



/*
 * * * * 
*       * 
*       * 
*       * 
* * * * * 
*/


func star2(i: Int) {
    for k in 0..<i {
        for j in 0..<i {

            if k == 0 || k == i-1 || j == 0 || j == i - 1 {

                print("*", terminator: " ")
            } else {
                print(" ", terminator: " ")
            }
        }
        print()
    }
}
star2(i: 5)
/*
 * * * * * * 
    * * * * * * 
      * * * * * * 
        * * * * * * 
          * * * * * * 
*/

func star3(i: Int) {

    for k in 0..<i {
        for j in 0...k {
            print(" ", terminator: " ")
        }

        for j in 0...i {
            print("*", terminator: " ")
        }
        print()
    }
}
star3(i: 5)

/*
            * * * * * * 
          * * * * * * 
        * * * * * * 
      * * * * * * 
    * * * * * * 
*/
func star4(i: Int) {

    for k in 0..<i {
        for j in 0...i-k {
            print(" ", terminator: " ")
        }

        for j in 0...i {
            print("*", terminator: " ")
        }
        print()
    }
}
star4(i: 5)
/*
1 1 1 1 1 
1 1 1 1 1 
1 1 1 1 1 
1 1 1 1 1 
1 1 1 1 1 
*/

func star5(i: Int) {

    for k in 1...i {

        for j in 1...i {
            print("\(1)", terminator: " ")
        }
        print()
    }
}
star5(i: 5)
/*
1 1 1 1 1 
2 2 2 2 2 
3 3 3 3 3 
4 4 4 4 4 
5 5 5 5 5 
*/

func star6(i: Int) {

    for k in 1...i {

        for j in 1...i {
            print("\(k)", terminator: " ")
        }
        print()
    }
}
star6(i: 5)

/*
* 
* * 
* * * 
* * * * 
* * * * * 
*/

func star7(i: Int) {

    for k in 1...i {

        for j in 1...k {
            print("*", terminator: " ")
        }
        print()
    }
}
star7(i: 5)
/*
1
23
456
78910
1112131415
*/


func star8(i: Int) {
var f = 1
    for k in 1...i {

        for j in 1...k {
            print("\(f)", terminator: "")
            f += 1
        }
        print()
    }
}
star8(i: 5)

/*
3
44
555
6666
77777
*/

func star9(i: Int) {
var f = 3
    for k in 1...i {

        for j in 1...k {
            print("\(f)", terminator: "")

        }
        f += 1
        print()
    }
}
star9(i: 5)
/*
77777
6666
555
44
3
*/


func star9(i: Int) {
var f = 3+i-1
    for k in (1...i).reversed() {

        for j in 1...k {
            print("\(f)", terminator: "")

        }
        f -= 1
        print()
    }
}
star(i: 5)



/*
3 
4 5 
6 7 8 
9 10 11 12 
13 14 15 16 17 
*/

func star10(i: Int) {
var f = 3
    for k in (1...i) {

        for j in 1...k {
            print("\(f)", terminator: " ")
            f += 1

        }

        print()
    }
}
star10(i: 5)

/*
3 
4 4 
5 5 5 
6 6 6 6 
7 7 7 7 7 
6 6 6 6 
5 5 5 
4 4 
3 
*/

func star11(i: Int) {
var f = 3
    for k in (1...i) {

        for j in 1...k {
            print("\(f)", terminator: " ")


        }
        f += 1
        print()
    }

    f -= 2
    for k in (1..<i).reversed() {

        for j in 1...k {
            print("\(f)", terminator: " ")


        }
        f -= 1
        print()
    }

}
star11(i: 5)
/*
* 
* * 
* * * 
* * * * 
* * * * * 
* * * * 
* * * 
* * 
* 
*/
func star12(i: Int) {

    for k in (1...i) {
        for j in 1...k {
            print("*", terminator: " ")
        }
        print()
    }

    for k in (1..<i).reversed() {
        for j in 1...k {
            print("*", terminator: " ")
        }
        print()
    }

}
star12(i: 5)

/*
        * 
      * * 
    * * * 
  * * * * 
* * * * * 
  * * * * 
    * * * 
      * * 
        * 
*/

func star13(i: Int) {

    for k in (1...i) {
        if i - k >= 1 {
            for j in 1...i-k {
                print(" ", terminator: " ")
            }
        }

        for j in 1...k {
            print("*", terminator: " ")
        }
        print()
    }


    for k in (1...i-1).reversed() {
        if i - k >= 1 {
            for j in 1...i-k {
                print(" ", terminator: " ")
            }
        }

        for j in 1...k {
            print("*", terminator: " ")
        }
        print()
    }

}
star13(i: 5)

/*
* * * * 
*     * 
*     * 
*     * 
* * * * 
*/

func star14(i: Int, j: Int) {

    for k in 1...i {
        for h in 1...j {
            if h == 1 || h == j || k == 1 || k == i {
                print("*", terminator: " ")
            } else {
                print(" ", terminator: " ")
            }
        }
        print()
    }

}
star14(i: 5, j: 4)

/*
  * * * * 
    * * * * 
      * * * * 
        * * * * 
          * * * * 
*/
func star15(i: Int, j: Int) {

    for k in 1...i {
        for h in 1...k {
            print(" ", terminator: " ")
        }
        for h in 1...j {
            print("*", terminator: " ")
        }
        print()
    }

}
star15(i: 5, j: 4)
/*
        * 
      * * * 
    * * * * * 
  * * * * * * * 
* * * * * * * * * 

*/

func star16(i: Int) {

    for k in 1...i {
        if i-k >= 1 {
            for h in 1...i-k {
                print(" ",terminator: " ")
            }
        }


            for h in (1...(2*k)-1) {
                print("*", terminator: " ")
            }

        print()

    }

}
star16(i: 5)
/*
        * 
      *   * 
    *       * 
  *           * 
* * * * * * * * * 
*/

func star17(i: Int) {

    for k in 1...i {
        if i-k >= 1 {
            for h in 1...i-k {
                print(" ",terminator: " ")
            }
        }


            for h in (1...(2*k)-1) {
                if h == 1 || h == (2*k)-1 || k == i {
                    print("*", terminator: " ")
                } else {
                    print(" ", terminator: " ")
                }
            }

        print()

    }

}
star17(i: 5)
/*
* * * * * * * * * 
  *           * 
    *       * 
      *   * 
        * 
*/

func star18(i: Int) {

    for k in (1...i).reversed() {
        if i-k >= 1 {
            for h in 1...i-k {
                print(" ",terminator: " ")
            }
        }


        for h in (1...(2*k)-1) {
                if h == 1 || h == (2*k)-1 || k == i {
                    print("*", terminator: " ")
                } else {
                    print(" ", terminator: " ")
                }
            }

        print()

    }

}
star18(i: 5)


