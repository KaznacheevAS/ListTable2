//
//  Muse+Structura.swift
//  ListTable
//
//  Created by Anton Kaznacheev on 26.10.2022.
//

import Foundation

struct ListTugle {
    let artist: String
    let song: String
    
    var descriptor: String {
        "\(artist) \(song)"
    }
}

extension ListTugle {
    static func getTrackList() -> [ListTugle] {
        [
            ListTugle(artist: "Лена Калинина", song: "Не разлюбить тебя позволь"),
            ListTugle(artist: "Лена Калинина", song: "Я уеду"),
            ListTugle(artist: "Сергей Ростовъ", song: "Гетера"),
            ListTugle(artist: "Михаил Бурляш", song: "Три слова на салфетке"),
            ListTugle(artist: "Николай Рябуха", song: "Колыбельная любви"),
            ListTugle(artist: "Николай Рябуха", song: "Дорога любви"),
            ListTugle(artist: "Людмила Шаронова", song: "Над землёй моей"),
            ListTugle(artist: "Людмила Шаронова", song: "Пелена"),
            ListTugle(artist: "Аня Воробей", song: "Куда уходят поезда"),
            ListTugle(artist: "Аня Воробей", song: "Сашкино лето"),
            ListTugle(artist: "Владимир Захаров", song: "Ты меня, мама, прости"),
            ListTugle(artist: "Аня Воробей, Рок-Острова", song: "Запретка"),
            ListTugle(artist: "Гера Грач", song: "Играй, Серёга!")
        ]
    }
}
