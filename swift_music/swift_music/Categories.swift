//
//  Categories.swift
//  swift_music
//
//  Created by Jesus Barraza on 07/12/24.
//
import SwiftUI

class AppState: ObservableObject {
		@Published var playing: Song = Song(title: "Now playing", artist: "Artist", image: "")
}

struct CategoriesView: View {
	
	@StateObject private var appState = AppState()
	
		var body: some View {
			VStack{
				HStack{
					NavigationView {
							List {
								NavigationLink("Genres", destination: GenreArtistView(title: "Genres", items: DataStore.genres, itemType: "genre").environmentObject(appState))
								NavigationLink("Artists", destination: GenreArtistView(title: "Artists", items: DataStore.artists, itemType: "artist").environmentObject(appState))
								NavigationLink("Songs", destination: SongsListView(songs: DataStore.songs).environmentObject(appState))
							}
							.navigationTitle("Categories")
					}
				}
				Spacer()
				BottomBar(song: appState.playing)
			}
		}
}

