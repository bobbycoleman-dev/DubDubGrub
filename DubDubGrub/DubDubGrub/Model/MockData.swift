//
//  MockData.swift
//  DubDubGrub
//
//  Created by Bob Coleman on 3/4/23.
//

import CloudKit

struct MockData {
    
    static var location: CKRecord {
        let record                          = CKRecord(recordType: RecordType.location)
        record[DDGLocation.kName]           = "Bobby's Bar and Grill"
        record[DDGLocation.kAddress]        = "123 Main Street"
        record[DDGLocation.kDescription]    = "This is a test description. This restaurant is the best in the area, come on by!"
        record[DDGLocation.kWebsiteURL]     = "https://apple.com"
        record[DDGLocation.kLocation]       = CLLocation(latitude: 37.331516, longitude: -121.891054)
        record[DDGLocation.kPhoneNumber]    = "978-866-9843"
        
        return record
    }
    
    static var profile: CKRecord {
        let record                          = CKRecord(recordType: RecordType.profile)
        record[DDGProfile.kFirstName]       = "Bobby"
        record[DDGProfile.kLastName]        = "Coleman"
        record[DDGProfile.kCompanyName]     = "The iOS Dev Company"
        record[DDGProfile.kBio]             = "I am an amazing iOS Dev that loves to create apps for the world to use."
        
        return record
    }
    
    static var chipotle: CKRecord {
            let record                          = CKRecord(recordType: RecordType.location,
                                                           recordID: CKRecord.ID(recordName: "28242523-7BE9-6C94-6C45-1F8275DA6E5D"))
            record[DDGLocation.kName]           = "Chipotle"
            record[DDGLocation.kAddress]        = "1 S Market St Ste 40"
            record[DDGLocation.kDescription]    = "Our local San Jose One South Market Chipotle Mexican Grill is cultivating a better world by serving responsibly sourced, classically-cooked, real food."
            record[DDGLocation.kWebsiteURL]     = "https://locations.chipotle.com/ca/san-jose/1-s-market-st"
            record[DDGLocation.kLocation]       = CLLocation(latitude: 37.334967, longitude: -121.892566)
            record[DDGLocation.kPhoneNumber]    = "408-938-0919"
            
            return record
        }
    
}
