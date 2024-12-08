//
//  Login.swift
//  swift_music
//
//  Created by Jesus Barraza on 07/12/24.
//

import SwiftUI

struct Login: View {
	@State private var text: String = ""
	@State private var password: String = ""
	
	@FocusState private var textFocus: Bool
	@FocusState private var passwordFocus: Bool
	@State private var rememberMe: Bool = false
	
	
var body: some View {
	NavigationView{
		VStack(alignment: .center, spacing: 15) {
			Spacer()
			Image(systemName: "music.note.tv.fill")
				.font(.system(size: 100))
				.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
			Text("Log in")
				.font(.system(size: 30))
				.bold()
			Spacer()
			TextField("Username", text: $text)
				.textFieldStyle(RoundedBorderTextFieldStyle())
				.border(.fill)
				.padding(.horizontal)
				.focused($textFocus)
				.onSubmit {
					
				}
			SecureField("Password", text: $password)
				.textFieldStyle(RoundedBorderTextFieldStyle())
				.border(.fill)
				.padding(.horizontal)
				.focused($textFocus)
				.onSubmit {
					
				}
			Toggle(isOn: $rememberMe) {
					Text("Remember me")
					.font(.system(size: 15))
			}.padding(.horizontal)
			Button(
				action: {
					
				}
			) {
				Text("Log in")
					.padding()
					.foregroundColor(.white)
					.background(Color.blue)
					.cornerRadius(10)
			}
			.padding()
			EmptyView()
				.frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
			Button(action: {}) {
				Text("Forgot password")
					.foregroundColor(.blue)
			}
			HStack(alignment: .center) {
				Text("Don't have an account?")
					.font(.system(size: 14))
				NavigationLink(
					destination: ContentView()) {
						Text("Register")
							.tint(.blue)
					}
			}
			Spacer()
			Text("Jesus Barraza @2024 all rights reserved")
				.font(.system(size: 10))
				.foregroundColor(.gray)
		}
		.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .center)
		.padding()
		.navigationBarBackButtonHidden(true)
	}
}
}

#Preview {
	Login()
}
