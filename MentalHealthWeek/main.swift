//
//  main.swift
//  MentalHealthWeek
//
//  Created by Russell Gordon on 1/12/17.
//  Copyright © 2017 Russell Gordon. All rights reserved.
//

import Foundation


struct Student {
    
    var grade : Int
    var advisor : String
    var email : String
    var monday :  String
    var tuesday : String
    var wednesday : String
    var thursday : String
    var friday : String
    
    init(grade : Int, advisor : String, email : String, monday : String, tuesday : String, wednesday : String, thursday : String, friday : String) {
        self.grade = grade
        self.advisor = advisor
        self.email = email
        self.monday = monday
        self.tuesday = tuesday
        self.wednesday = wednesday
        self.thursday = thursday
        self.friday = friday
    }
    
    
}
struct Activity {
    
    var maxCount : Int
    var currentCount : Int
    var name : String
    var attending = [String]()
    init(maxCount : Int, currentCount : Int, name : String) {
        self.maxCount = maxCount
        self.currentCount = currentCount
        self.name = name
    }
    
}

var studentEmail : String
var studentGrade : String
var studentAdvisor : String
var studentActivities : [String] = []

var students : [Student] = []

var descriptorLookup : [String] = []

var activities : [ String : Activity] = [
    "Breakfast": Activity(maxCount: 160, currentCount: 0, name: "Breakfast"),
    "Gym" : Activity(maxCount: 40, currentCount: 0, name: "Gym"),
    "Yoga" : Activity(maxCount: 20, currentCount: 0, name: "Yoga"),
    "Academics" : Activity(maxCount: 30, currentCount: 0, name: "Academics"),
    "Animals" : Activity(maxCount: 16, currentCount: 0, name: "Animals"),
    "Relaxation" : Activity(maxCount: 160, currentCount: 0, name: "Relaxation"),
    "Massage" : Activity(maxCount: 12, currentCount: 0, name: "Massage"),
    "Sleep" : Activity(maxCount: 500, currentCount: 0, name: "Sleep")
]

//MARK: Sorting Function

func getActivityName (whole: String) -> String  {
    var switchNow = 0
    var charSetup = [Character]()
    var output = ""
    for char in whole.characters {
        if switchNow == 2 {
            charSetup.append(char)
            
        }
        
        if char == "_" {
            switchNow += 1
        }
    }
    output = String(charSetup)
    return output
}

func getActivityDay (whole: String) -> String  {
    var charSetup = [Character]()
    var output = ""
    for char in whole.characters {
        if char == "_" {
            output = String(charSetup)
            return output
        }
        charSetup.append(char)
    }
    return output
}

func getgrade9 (columnDescriptors : [String] ) {

    var monday : [String : Int] = [
    
        "Breakfast" : Int(columnDescriptors[11])!,
        "Gym" : Int(columnDescriptors[12])!,
        "Yoga" : Int(columnDescriptors[13])!,
        "Academics" : Int(columnDescriptors[14])!,
        "Animals" : Int(columnDescriptors[15])!
    ]
    
    var tuesday : [String : Int] = [
        
        "Breakfast" : Int(columnDescriptors[16])!,
        "Gym" : Int(columnDescriptors[17])!,
        "Yoga" : Int(columnDescriptors[18])!,
        "Academics" : Int(columnDescriptors[19])!,
        "Animals" : Int(columnDescriptors[20])!
    ]
    
    var wednesday : [String : Int] = [
        
        "Breakfast" : Int(columnDescriptors[21])!,
        "Gym" : Int(columnDescriptors[22])!,
        "Yoga" : Int(columnDescriptors[23])!,
        "Academics" : Int(columnDescriptors[24])!,
        "Animals" : Int(columnDescriptors[25])!,
        "Relaxation" : Int(columnDescriptors[26])!
    ]
    
    var thursday : [String : Int] = [
        
        "Breakfast" : Int(columnDescriptors[28])!,
        "Gym" : Int(columnDescriptors[29])!,
        "Relaxation" : Int(columnDescriptors[30])!,
        "Academics" : Int(columnDescriptors[31])!,
        "Animals" : Int(columnDescriptors[32])!,
        "Sleep" : Int(columnDescriptors[27])!
    ]
    
    var friday : [String : Int] = [
        
        "Sleep" : Int(columnDescriptors[33])!,
        "Gym" : Int(columnDescriptors[34])!,
        "Relaxation" : Int(columnDescriptors[35])!,
        "Academics" : Int(columnDescriptors[36])!,
        "Animals" : Int(columnDescriptors[37])!,
        "Maaage" : Int(columnDescriptors[38])!
    ]
    
    for (activity, rank) in monday {
        
        if rank == 1 {
            
            if activities[activity]!.currentCount < activities[activity]!.maxCount {
               
                activities[activity]!.attending.append(studentEmail)
                activities[activity]!.currentCount += 1
                studentActivities.append(activities[activity]!.name)
                
            } else {
              
               
                
                
            }
            
        }
        
        
    }
    
    
}


//print(activities)



//MARK: Read File

// Read the text file (place in your home folder)
// Path will probably be /Users/student/survey_response_sample.txt
// Obtain the data file on Haiku, Day 37
guard let reader = LineReader(path: "/Users/student/survey_response_all_data_combined_headers.csv") else {
    exit(0); // cannot open file
}

// Structures used to process data
var columnDescriptors : [String] = []

//print(reader.enumerated())

// Iterate over each line in the file and print to the terminal
for (number, line) in reader.enumerated() {
    
    // Look for first line and build an array of column descriptors
    if number == 1 {
        
      columnDescriptors = line.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).components(separatedBy: ",")
        
        for (column, descriptor) in columnDescriptors.enumerated()
        {
            descriptorLookup.append(descriptor) // Build descriptor lookup table
        }
        
        
        
    } else {
        
        // Get an array of all the information on the first line
        // "Explode" the string into an array of smaller strings using a comma as a delimiter
        columnDescriptors = line.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).components(separatedBy: ",")
        
        var studentEmail = columnDescriptors[5]
        var studentGrade = columnDescriptors[9]
        var studentAdvisor = columnDescriptors[10]
        var studentActivities : [String] = []
        
        if let studentGradenum = Int(studentGrade) {
            
        
            
            
        }
        
        
        print(columnDescriptors)
        // Iterate over the array of column headers and print to the console
        for (column, descriptor) in columnDescriptors.enumerated() {
            //Columns apear to be accesed by int values, so a conditional checking column value is a good way to extract a specific descriptor
            
            
        }
        
    }
    
}

// Open an output file for writing, overwriting any existing data
guard let writer = LineWriter(path: "/Users/student/survey_output.txt", appending: false) else {
    print("Cannot open output file")
    exit(0); // cannot open output file
}

// Iterate over the array of column headers and print each element to the output file
for (column, descriptor) in columnDescriptors.enumerated() {
    writer.write(line: "column \(column) : \(descriptor)")
}

// Close the output file
writer.close()

