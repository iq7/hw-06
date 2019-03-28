//
//  AlamofireProxy.swift
//  homeWork_1
//
//  Created by Андрей Тихонов on 26/03/2019.
//  Copyright © 2019 Марат Нургалиев. All rights reserved.
//

import Foundation

class AlamofireProxy {
    private let service: AlamofireService
    init(service: AlamofireService) {
        self.service = service
    }
}

extension AlamofireProxy: NetFriendServiceInterface {
    func getFriends(delegate: VkApiFriendsDelegate) {
        self.service.getFriends(delegate: delegate)
        print("Вызвана функция getFriends")
    }
}

extension AlamofireProxy: NetGtoupServiceInterface {
    func getGroups(delegate: VkApiGroupsDelegate) {
        self.service.getGroups(delegate: delegate)
        print("Вызвана функция getGroups")
    }
    
    func leaveGroup(gid: Int, delegate: VkApiGroupsDelegate) {
        self.service.leaveGroup(gid: gid, delegate: delegate)
        print("Вызвана функция leaveGroup с параметром gid = \(gid)")
    }
    
    func joinGroup(gid: Int, delegate: VkApiGroupsDelegate) {
        self.service.joinGroup(gid: gid, delegate: delegate)
        print("Вызвана функция joinGroup с параметром gid = \(gid)")
    }
    
    func searchGroups(search: String, delegate: VkApiGroupsDelegate) {
        self.service.searchGroups(search: search, delegate: delegate)
        print("Вызвана функция searchGroups\(search == "" ? "" : " с параметром search = \(search)")")
    }
}

extension AlamofireProxy: NetPhotoServiceInterface {
    func getPhotos(delegate: VkApiPhotosDelegate) {
        self.service.getPhotos(delegate: delegate)
        print("Вызвана функция getPhotos")
    }
    
    func getPhotos(delegate: VkApiGroupsDelegate) {
        self.service.getGroups(delegate: delegate)
        print("Вызвана функция getPhotos")
    }
    
    func getPhotosBy(_ id: Int, delegate: VkApiPhotosDelegate) {
        self.service.getPhotosBy(id, delegate: delegate)
        print("Вызвана функция getPhotosBy с параметром id = \(id)")
    }
}

extension AlamofireProxy: NetNewsServiceInterface {
    func getNews(startFrom: String, delegate: VkApiFeedsDelegate) {
        self.service.getNews(startFrom: startFrom, delegate: delegate)
        print("Вызвана функция getNews\(startFrom == "" ? "" : " с параметром startFrom = \(startFrom)")")
    }
}

extension AlamofireProxy: NetCommentsServiceInterface {
    func getComments(ownerId: Int, postId: Int, delegate: VkApiCommentsDelegate) {
        self.service.getComments(ownerId: ownerId, postId: postId, delegate: delegate)
        print("Вызвана функция getComments с параметром ownerId = \(ownerId)")
    }
}
