//
//  GFButton.swift
//  GHFollowers
//
//  Created by Zohra Guliyeva  on 18.04.24.
//

import UIKit

class GFButton: UIButton {
    override init(frame: CGRect) {//bu GFButton classinin bir frame ile cercive ile basladilmasini saglayir.
        super.init(frame: frame) // bu ise UIButton classinin
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //custom initialize
    init(backGroundColor: UIColor, title: String) { // iki parametre alır: bir arka plan rengi ve bir başlık. Bu başlatıcı, GFButton örneğinin başlangıçta belirli bir arka plan rengi ve başlık ile yaratılmasını sağlar.
        
        super.init(frame: .zero) //UIButton'un çerçevesi başlangıçta boş (zero) olarak ayarlanır, çünkü bu çerçeve daha sonra belirlenecektir
        self.backgroundColor = backGroundColor //burda self yazmasaq da olar adlari eyni olsa yazmagimiz vacibdir ki dogru tapsin
        self.setTitle(title, for: .normal)
        configure()
    }
    
    //private o demekdiki biz bu functionu bashqa yerde initialize ede bilmeyeceyik
    private func configure() {
        layer.cornerRadius       = 10
        titleLabel?.textColor    = .white
        titleLabel?.font         = UIFont.preferredFont(forTextStyle: .headline) //bu userin sistem ayarlarina gore tenzimlenir
        translatesAutoresizingMaskIntoConstraints = false //Butonun çerçevesinin Auto Layout kuralları ile belirlenebilmesi için UIKit'in eski pozisyon belirleme sisteminin kullanımını devre dışı bırakır.
    }
    
}
