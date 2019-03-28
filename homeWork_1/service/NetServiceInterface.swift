//
//  NetServiceInterface.swift
//  homeWork_1
//
//  Created by Андрей Тихонов on 28/03/2019.
//  Copyright © 2019 Марат Нургалиев. All rights reserved.
//

import Foundation

//Друзья
protocol NetFriendServiceInterface {
    func getFriends(delegate: VkApiFriendsDelegate)
}

//Группы
protocol NetGtoupServiceInterface {
    func getGroups(delegate: VkApiGroupsDelegate)
    func leaveGroup(gid: Int, delegate: VkApiGroupsDelegate)
    func joinGroup(gid: Int, delegate: VkApiGroupsDelegate)
    func searchGroups(search: String, delegate: VkApiGroupsDelegate)
}

//Фото
protocol NetPhotoServiceInterface {
    func getPhotos(delegate: VkApiPhotosDelegate)
    func getPhotosBy(_ id: Int, delegate: VkApiPhotosDelegate)
}

//Новости
protocol NetNewsServiceInterface {
    func getNews(startFrom: String, delegate: VkApiFeedsDelegate)
}

//Комментарии
protocol NetCommentsServiceInterface {
    func getComments(ownerId: Int, postId: Int, delegate: VkApiCommentsDelegate)
}
