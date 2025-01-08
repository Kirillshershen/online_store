namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do


    ClothType.create(name: "штаны")
    ClothType.create(name: "кофта")
    ClothType.create(name: "брюки")
    ClothType.create(name: "костюмы")
    ClothType.create(name: "майки")

    cloth_types = ClothType.all
    cloth_types.each do |cloth_type|
      %w[S M L XL].each_with_index do |size, index|
        Size.create!(
          size_type: size,
          size_value: (index + 1) * 10 + (1..5).to_a.sample,
          cloth_type: cloth_type
        )
      end
    end


    99.times do |n|
      name  = "cloth:#{n}"
      description = "Описание: #{n}"
      price = [3,6,8,2,5,6].sample
      season = ["лето","зима","межзезон"].sample
      cloth_type = ClothType.all.sample 


      Cloth.create!(
        name: name,
        description: description,
        price: price,
        season: season,
        cloth_type_id: cloth_type.id,  # используем id для связи
      )

    end
  end

  
  
end
