//
//  NowPlaying.swift
//  swift_music
//
//  Created by Jesus Barraza on 07/12/24.
//
import SwiftUI

struct BottomBar: View {
	var song: Song
	
	@State var playing: Bool = true
		
		var body: some View {
				VStack {
					HStack{
						Image(song.image)
							.resizable()
							.aspectRatio(contentMode: .fit)
							.frame(width: 42, height: 42)
							.padding(.trailing, 15)
					EmptyView().frame(width: 30)
						VStack(alignment: .leading) {
							Text(song.title).bold()
							Text(song.artist).font(.subheadline).foregroundColor(.gray)
						}
						Spacer()
						Button(action: {
							withAnimation(.easeInOut(duration: 0.1)) {
											playing.toggle()
									}
						}) {
							Image(systemName: playing ? "pause.circle" : "play.circle")
										.font(.title)
						}
					}
					Divider()
						.padding(.bottom, 10)
					HStack {
						Button(action: {
							}) {
									Image(systemName: "house.fill")
											.font(.title)
							}
							Spacer()
							Button(action: {
							}) {
									Image(systemName: "book.fill")
											.font(.title)
							}
							Spacer()
							Button(action: {
							}) {
									Image(systemName: "magnifyingglass")
											.font(.title)
							}
							Spacer()
							Button(action: {
							}) {
									Image(systemName: "gear")
											.font(.title)
							}
					}
				}
				.padding()
				.background(Color(UIColor.systemGray6))
		}
}
