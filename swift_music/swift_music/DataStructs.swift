//
//  DataStructs.swift
//  swift_music
//
//  Created by Jesus Barraza on 07/12/24.
//

struct Artist : Hashable {
		var name: String
		var image: String
}

struct Song : Hashable {
		var title: String
		var artist: String
		var genre: String?
		var image: String
}

// Define a class with static properties
class DataStore {
		static var genres: [Artist] = [
				Artist(name: "Hip hop", image: "hiphop"),
				Artist(name: "Pop", image: "pop"),
				Artist(name: "Rock", image: "rock"),
				Artist(name: "Electronic", image: "electronic"),
				Artist(name: "Corridos tumbados", image: "tumbados"),
				Artist(name: "Country", image: "country")
		]
		
		static var artists: [Artist] = [
				Artist(name: "Metro Boomin", image: "metro"),
				Artist(name: "Kanye West", image: "kanye"),
				Artist(name: "Travis Scott", image: "travis"),
				Artist(name: "Kendrick Lamar", image: "kendrick"),
				Artist(name: "Don Toliver", image: "dontoliver"),
				Artist(name: "Nothing But Thieves", image: "thieves")
		]
		
		static var songs: [Song] = [
				Song(title: "Trance", artist: "Metro Boomin", genre: "Hip hop", image: "metro"),
				Song(title: "Around me", artist: "Metro Boomin", genre: "Hip hop", image: "metro"),
				Song(title: "Too Many Nights", artist: "Metro Boomin", genre: "Hip hop", image: "metro"),
				Song(title: "Superhero", artist: "Metro Boomin", genre: "Hip hop", image: "metro"),
				// Kanye West
						Song(title: "Praise God", artist: "Kanye West", genre: "Hip hop", image: "kanye"),
						Song(title: "Stronger", artist: "Kanye West", genre: "Hip hop", image: "kanye"),
						Song(title: "Gold Digger", artist: "Kanye West", genre: "Hip hop", image: "kanye"),
						Song(title: "Heartless", artist: "Kanye West", genre: "Hip hop", image: "kanye"),

						// Travis Scott
						Song(title: "SICKO MODE", artist: "Travis Scott", genre: "Hip hop", image: "travis"),
						Song(title: "Goosebumps", artist: "Travis Scott", genre: "Hip hop", image: "travis"),
						Song(title: "Stop Trying to Be God", artist: "Travis Scott", genre: "Hip hop", image: "travis"),
						Song(title: "Highest in the Room", artist: "Travis Scott", genre: "Hip hop", image: "travis"),

						// Kendrick Lamar
						Song(title: "HUMBLE.", artist: "Kendrick Lamar", genre: "Hip hop", image: "kendrick"),
						Song(title: "DNA.", artist: "Kendrick Lamar", genre: "Hip hop", image: "kendrick"),
						Song(title: "Swimming Pools (Drank)", artist: "Kendrick Lamar", genre: "Hip hop", image: "kendrick"),
						Song(title: "Alright", artist: "Kendrick Lamar", genre: "Hip hop", image: "kendrick"),

						// Don Toliver
						Song(title: "Lemonade", artist: "Don Toliver", genre: "Hip hop", image: "dontoliver"),
						Song(title: "No Idea", artist: "Don Toliver", genre: "Hip hop", image: "dontoliver"),
						Song(title: "Cardigan", artist: "Don Toliver", genre: "Hip hop", image: "dontoliver"),
						Song(title: "After Party", artist: "Don Toliver", genre: "Hip hop", image: "dontoliver"),

						// Nothing But Thieves
						Song(title: "Tomorrow is closed", artist: "Nothing But Thieves", genre: "Rock", image: "thieves"),
						Song(title: "Amsterdam", artist: "Nothing But Thieves", genre: "Rock", image: "thieves"),
						Song(title: "Sorry", artist: "Nothing But Thieves", genre: "Rock", image: "thieves"),
						Song(title: "Forever & Ever More", artist: "Nothing But Thieves", genre: "Rock", image: "thieves"),
				
				// Maneskin
				Song(title: "The Driver", artist: "Maneskin", genre: "Rock", image: "rock"),
				Song(title: "Honey", artist: "Maneskin", genre: "Rock", image: "rock"),
				Song(title: "Own My Mind", artist: "Maneskin", genre: "Rock", image: "rock"),
				Song(title: "Supermodel", artist: "Maneskin", genre: "Rock", image: "rock"),
				
				// Tito doble p
				Song(title: "Escapate", artist: "Tito Double P", genre: "Corridos tumbados", image: "tumbados"),
				Song(title: "Lokeron", artist: "Tito Double P", genre: "Corridos tumbados", image: "tumbados"),
				Song(title: "Primo", artist: "Tito Double P", genre: "Corridos tumbados", image: "tumbados"),
				Song(title: "Chino", artist: "Tito Double P", genre: "Corridos tumbados", image: "tumbados"),
		]
}
