//
//  Array2D.swift
//  Swiftris
//
//  Created by Jim Tryon on 5/1/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

// #1
// define 2D array (class objects pass by ref, structs passed by value)
class Array2D<T> {
    let columns: Int
    let rows: Int

    // #2
    // using a ? symbolizes optional value
    var array: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows

        // #3
        array = Array<T?>(count:rows * columns, repeatedValue: nil)
    }
    

    // #4
    subscript(column: Int, row: Int) -> T? {
        get {
            return array[(row * columns) + column]
        }
        set(newValue) {
            array[(row * columns) + column] = newValue
        }
    }
}