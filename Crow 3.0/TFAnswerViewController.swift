//
//  TFAnswerViewController.swift
//  Crow 3.0
//
//  Created by Eduard Sinyakov on 27/01/2019.
//  Copyright © 2019 Eduard Sinyakov. All rights reserved.
//

import UIKit

class TFAnswerViewController: UIViewController {
    var answersArrya = ["Исполнится", "Если реально хочешь, то да", "Сам понимаешь, не реально", "Даже невозможное возможно", "Попробуй", "Два раза в день и сломанные часы показывают правильное время", "Абсолютно точно", "Нет", "Да", "Ес оф корс", "Мне жаль", "Как кар, переспроси", "Эти мысли до добра не доведут", "Может и да", "Конечно, да", "У меня точно ответ ты не найдешь", "Невермор", "Уес", "Ответ найдешь на морях", "Ты еще спроси, существуют ли драконы", "Да, но я тебе этого не говорил", "Да, если начнешь прямо сейчас", "Выкинь это из головы", "Точно не ко мне", "Пробуй!", "Повремени", "ДА!!!", "НЕТ!", "Странный вопрос", "Начни сегодня", "Если я скажу, что это невозможно, ты все равно мне не поверишь", "Да", "Нет", "Yes", "No", "Всегда говори ДА", "Переспроси завтра", "Да, если сделаешь сегодня доброе дело", "Не играй со злом", "Сделай и узнаешь", "А что ты думаешь?", "Смогу ответить позже", "Мало информации, переспроси", "Главное - не лениться", "Just do it", "Надеюсь, ты это невсерьез", "Упс", "Ответ в одной из книг Л.Н. Толстого", "Нет.", "Исключено", "Лучше посмотри фильм с Дензелом Вашингтоном", "Лучше сходи в театр", "Лучше сходи на балет", "Выкини это из головы и посети ближайший спектакль", "Ответ в твоем первом доме", "Не упусти шанс", "Бред собачий", "Бред кошачий", "Глупость", "Пфф", "А оно надо?", "Да", "Не спрашивай, а действуй", "Ответ положительный", "Ответ отрицательный", "Да будет так!", "Можно", "Не дрейфь", "Получится", "Давай по новой", "Пожалуй, нет", "Пожалуй, да", "Вопросов всегда больше, чем ответов", "Действуй по ситуации", "Я 100 раз так делал", "Что-то хотел ответить, забыл", "Попробуй включить и выключить", "Все сможешь", "Все не сможешь", "Ответ у Брайана Трейси", "Смотри цитату Марка Твена", "Фрейд ответи за меня", "С меня взятки гладки", "Давай следующий вопрос", "Не грузи...", "Почему все это спрашивают?", "Оригинально, пока не знаю", "Нэкст", "Тру эгэйн", "Yes!", "No.", "Зачем это спрашивать?", "Я говорю тебе - ДА", "Именно тебе - НЕТ", "Я не в настроении", "Найдешь у мастера Йоды ответ", "Не думай об этом", "Само не решится, займись этим плотненько", "404 эррор", "Не читал, но осуждаю", "Отложим до завтра", "Вот это бред", "Чушь полная", "Как неожиданно и приятно", "Каким будет твой положительный ответ", "У каждого безумия есть своя логика", "Давай", "Давай, до свидания", "Просто сделай", "Лучше прочитай книгу", "Хороший фильм тебе в помощь", "Меньше слов, больше дела", "Не прими вежливый отказ за робкое согласие", "А что ты думаешь?", "Мне нужно посоветоваться со старшими", "Слушай сердце", "Зачем спрашивать?!", "Надо", "За работу", "Just do it"]

    @IBAction func backButtonAction(_ sender: UIButton) {
    }
    @IBOutlet weak var aLabel: UILabel!
    @IBOutlet weak var qLabel: UILabel!
    
    @IBOutlet weak var viewImage: UIImageView!
    @IBAction func shareButton(_ sender: UIButton) {
        share()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let answer = answersArrya.randomElement()
        aLabel.text = answer
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        qLabel.text = textInTextField + "?"
        
        if textInTextField == "" {
            
            aLabel.text = "Не пытайся меня надуть"
            
        }
        
        
        
        if textInTextField.hasSuffix("погода") {
            
            aLabel.text = "Я не гидромедцентр"
            
        }
        
        
        
        if textInTextField.hasSuffix("Погода") {
            
            aLabel.text = "Я не гидромедцентр"
            
        }
        
        
        
        if textInTextField.hasSuffix("дурак") {
            
            aLabel.text = "Сам такой"
            
        }
        
        
        
        if textInTextField.hasSuffix("Дурак") {
            
            aLabel.text = "Сам такой"
            
        }
        
        if textInTextField.hasSuffix("тупой") {
            
            aLabel.text = "Сам такой"
            
        }
        
        
        
        if textInTextField.hasSuffix("тупой?") {
            
            aLabel.text = "Сам такой"
            
        }
        
        
        
        if textInTextField.hasSuffix("Тупой") {
            
            aLabel.text = "Сам такой"
            
        }
        
        
        
        if textInTextField.hasSuffix("Как дела") {
            
            aLabel.text = "Хорошо, а у тебя? Давай лучше по существу."
            
        }
        
        
        
        if textInTextField.hasSuffix("Как дела?") {
            
            aLabel.text = "Хорошо, а у тебя? Давай лучше по существу."
            
        }
        
        
        
        if textInTextField.hasSuffix("полнится") {
            
            aLabel.text = "Сделай все, чтобы исполнилось"
            
        }
        
        
        
        if textInTextField.hasSuffix("полнится?") {
            
            aLabel.text = "Сделай все, чтобы исполнилось"
            
        }
        
        
        
        if textInTextField.hasSuffix("погода?") {
            
            aLabel.text = "Я не гидромедцентр"
            
        }
        
        
        
        if textInTextField.hasPrefix("Погода ") {
            
            aLabel.text = "Я не гидромедцентр"
        }
        }
        
        func share() {
            let shareTextLabel = qLabel.text
            let shareTextAnswer = aLabel.text
            let url = URL.init(string: "https://itunes.apple.com/ru/app/%D0%BD%D0%B5%D0%B2%D0%B5%D1%80%D0%BC%D0%BE%D1%80-%D0%B2%D0%BE%D1%80%D0%BE%D0%BD-%D0%BF%D1%80%D0%B5%D0%B4%D1%81%D0%BA%D0%B0%D0%B7%D0%B0%D1%82%D0%B5%D0%BB%D1%8C/id1450751535?mt=8")
            let activityController = UIActivityViewController(activityItems: [shareTextLabel!, shareTextAnswer!  + " - мое предсказание от ворона Невермора", url ?? "https://itunes.apple.com/ru/"], applicationActivities: nil)
            present(activityController, animated: true, completion: nil)
        }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}
