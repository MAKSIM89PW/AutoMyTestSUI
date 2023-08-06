//
//  PostCard.swift
//  AutoMyTestSUI
//
//  Created by Максим Нурутдинов on 06.08.2023.
//

import SwiftUI

struct PostCard: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PostCard_Previews: PreviewProvider {
    static var previews: some View {
        PostCard(image: "http://am111.05.testing.place/uploads/user/32/auto/32/post/45/be3705db6c580f82430279b6f75b4b93.jpg",
                 date: "2018-12-21", postText: "Добрый день, дорогие друзья! Как-то дождь пна улице, тоска зеленая. Решил пофантазировать…))))\r\nНе не, извращенцы, я не об этом)))))\r\nЯ о том, как бы мог выглядеть Лансер. И вот я нафантазировал…\r\nЖду комментариев!\r\nСпасибо, что заходите!", likesCount: 8, commentsCount: 1)
    }
}
