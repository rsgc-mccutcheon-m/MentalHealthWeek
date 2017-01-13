//
//  main.swift
//  MentalHealthWeek
//
//  Created by Russell Gordon on 1/12/17.
//  Copyright © 2017 Russell Gordon. All rights reserved.
//

import Foundation

// Read the text file (place in your home folder)
// Path will probably be /Users/student/survey_response_sample.txt
// Obtain the data file on Haiku, Day 37
guard let reader = LineReader(path: "/Users/russellgordon/survey_response_sample.txt") else {
    exit(0); // cannot open file
}

// Iterate over each line in the file and print to the terminal
for line in reader {
    print(">" + line.trimmingCharacters(in: .whitespacesAndNewlines))
}

