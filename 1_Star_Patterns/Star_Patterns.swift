
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




