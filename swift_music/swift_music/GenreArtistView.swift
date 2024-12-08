//
//  GenreArtistView.swift
//  swift_music
//
//  Created by Jesus Barraza on 07/12/24.
//
import SwiftUI

struct GenreArtistView: View {
	var title: String
	var items: [Artist]
	var itemType: String
	
	@EnvironmentObject var appState: AppState
		
		var body: some View {
				VStack {
						TextField("Buscar...", text: .constant(""))
								.textFieldStyle(RoundedBorderTextFieldStyle())
								.padding()
						
						ScrollView {
								LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
										ForEach(items, id: \.self) { item in
											NavigationLink(destination: SongsListView(
												songs: DataStore.songs.filter{(itemType == "artist" && $0.artist == item.name) || (itemType == "genre" && $0.genre == item.name)}
											).environmentObject(appState)
											){
												VStack {
													Image(item.image)
														.resizable()
														.aspectRatio(contentMode: .fit)
														.frame(width: 150, height: 150)
													Text(item.name)
												}
												.padding()
											}
										}
								}
						}
						
						Spacer()
						//NowPlayingView(song: playing)
				}
				.navigationTitle(title)
		}
}

