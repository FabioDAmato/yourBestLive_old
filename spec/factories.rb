FactoryBot.define do
    factory :city , class: City do
        nomecity {"Roma"}
        created_at {"bo"}
        updated_at {"bo"}
        id {"120"}
    end

    factory :user , class: User do
        email {"admin@admin.it"}
        password {"admin1"}
        username {"username"}
        admin {false}
    end
end 