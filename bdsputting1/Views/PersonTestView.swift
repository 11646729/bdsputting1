//
//  PersonTestView.swift
//  bdsputting1
//
//  Created by BRIAN SMITH on 10/07/2024.
//

import SwiftUI

struct PersonRowView: View {
    var person: Person
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text(person.name)
                .foregroundColor(.primary)
                .font(.headline)
            HStack(spacing: 3) {
                Label(person.phoneNumber, systemImage: "phone")
            }
            .foregroundColor(.secondary)
            .font(.subheadline)
        }
    }
}

//struct StaffList: View {
//    var body: some View {
//        List {
//            ForEach(staff) { person in
//                Text(person.name)
//            }
//        }
//    }
//}


struct StaffList: View {
    var body: some View {
        
        List {
            ForEach(staff) { person in
                PersonRowView(person: person)
            }
        }
    }
}

struct Person: Identifiable {
    let id = UUID()
    var name: String
    var phoneNumber: String
}

var staff = [
    Person(name: "Juan Chavez", phoneNumber: "(408) 555-4301"),
    Person(name: "Mei Chen", phoneNumber: "(919) 555-2481")
]

#Preview {
    
    StaffList()

//    PersonTestView()
}
