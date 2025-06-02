//
//  SocialView.swift
//  SimpleSocial
//
//

import SwiftUI

struct SocialView: View {
    let models: [SocialModel]
        
    private func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "M.dd.yyyy @ h:mm a"
        return formatter.string(from: date)
    }

    
    var body: some View {
        VStack {
            Text("Simple Social")
                .font(.headline)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 12) {
                    ForEach(models) { model in
                        Group {
                            VStack {
                                HStack(spacing: 8) {
                                    AsyncImage(url: URL(string: "https://avatar.iran.liara.run/username?username=\(model.author)")){ result in
                                        result.image?
                                            .resizable()
                                            .scaledToFill()
                                    }
                                    .frame(width: 32, height: 32)
                                    Text(model.author)
                                        .font(.footnote)
                                    Spacer()
                                    Text(formattedDate(model.date))
                                        .font(.caption2)
                                    
                                }
                                HStack {
                                    Text(model.body)
                                        .font(.body)
                                    Spacer()
                                }
                                HStack {
                                    Button(action: {
                                        // TODO: Replies
                                    }) {
                                        Image(systemName: "bubble.left")
                                            .foregroundStyle(Color.black)
                                    }
                                    
                                    Button(action: {
                                        // TODO: How can we make this work?
                                        // model.favorite.toggle()
                                    }) {
                                        if model.favorite {
                                            Image(systemName: "heart.fill")
                                                .foregroundStyle(Color.red)
                                        } else {
                                            Image(systemName: "heart")
                                                .foregroundStyle(Color.black)
                                        }
                                    }
                                    
                                    ShareLink(item: URL(string: "https://finance.yahoo.com")!) {
                                        Label("", systemImage: "square.and.arrow.up")
                                    }
                                    .foregroundStyle(Color.black)

                                    
                                    Menu {
                                        Button("Block Account", role: .destructive) {
                                            // do stuff
                                        }
                                        Button("Mute Account") {
                                            // do stuff
                                        }
                                        Button("Report Post") {
                                            // do stuff
                                        }
                                        
                                    } label: {
                                        Image(systemName: "ellipsis")
                                            .foregroundStyle(Color.gray)
                                    }
                                    
                                    Spacer()
                                }
                                .padding(.top, 10)
                            }
                            .padding(12)
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 12, style: .continuous)
                                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                        )
                    }
                }
            }
            .padding(.horizontal, 16)
            .padding(.top, 16)
        }
    }
}


