//
//  CarScreen.swift
//  AutoMyTestSUI
//
//  Created by Максим Нурутдинов on 06.08.2023.
//

import SwiftUI

struct CarScreen: View {
    @ObservedObject var carViewModel: CarViewModel
    @ObservedObject var postsViewModel: PostCarViewModel
    
    var body: some View {
        ScrollView {
            TopProfileView(
                accountBackground: carViewModel.car?.carInfo.images.first?.url ?? "",
                avatar: carViewModel.car?.user.avatar.url ?? "",
                followers: carViewModel.car?.carInfo.followersCount ?? 0,
                autoCount: carViewModel.car?.user.autoCount ?? 0
            )
            
            StatisticsItems(carViewModel: carViewModel)
                .offset(y:30)
            
            LazyVStack {
                if let posts = postsViewModel.carPost {
                    ForEach(posts, id: \.id) { post in
                        PostCard(image: post.postImage ?? "",
                                 date: post.formattedDate ?? post.createdAt,
                                 postText: post.text,
                                 likesCount: post.likeCount,
                                 commentsCount: post.commentCount)
                        .onAppear {
                            if post.id == posts.last?.id {
                                postsViewModel.fetchMoreCarPosts()
                            }
                        }
                    }
                }
            }
            .padding(.top)
            
            if postsViewModel.isLoading {
                ProgressView()
                    .progressViewStyle(.circular)
                    .padding(.all)
            }
        }
        .onDisappear {
            carViewModel.reset()
            postsViewModel.reset()
        }
    }
}
