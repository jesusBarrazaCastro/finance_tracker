//
//  SongsView.swift
//  swift_music
//
//  Created by Jesus Barraza on 07/12/24.
//
import SwiftUI

struct SongsListView: View {
		var songs: [Song]
		
	@EnvironmentObject var appState: AppState
	
		var body: some View {
			if(songs.isEmpty){
				Image(systemName: "magnifyingglass.circle")
				Text("No songs found")
			}
				VStack {
						List(songs, id: \.title) { song in
								HStack {
										Image(song.image)
											.resizable()
											.aspectRatio(contentMode: .fit)
											.frame(width: 50, height: 50)
										EmptyView().frame(width: 20)
										VStack(alignment: .leading) {
												Text(song.title).bold()
												Text(song.artist).font(.subheadline).foregroundColor(.gray)
										}
										Spacer()
										Button(action: {
											appState.playing = song
										}) {
												Image(systemName: "play.circle")
														.font(.title)
										}
								}
								.padding(.vertical, 5)
						}
						
						Spacer()
					//NowPlayingView(song: nowPlaying)
				}
				.navigationTitle("Canciones")
		}
}
