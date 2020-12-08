module PetsHelper
    def pet_histories_count(pet)
        PetHistory.where(pet_id: pet.id).count        
    end

    def prom_weight(pet)
        pet_histories=PetHistory.where(pet_id: pet.id)
        sum=pet_histories.inject(0) { |sum, pet_history| sum+ pet_history.weight }
        prom=sum/pet_histories.count
        return prom
    end

    def prom_heigth(pet)
        pet_histories=PetHistory.where(pet_id: pet.id)
        sum=pet_histories.inject(0) { |sum, pet_history| sum+ pet_history.heigth }
        prom=sum/pet_histories.count
        return prom
    end

    def max_heigth(pet)
        pet_histories=PetHistory.where(pet_id: pet.id)
        pet_heigth=pet_histories.map{ |pet_history| pet_history.heigth }
        max=pet_heigth.max
        return max
    end

    def max_weight(pet)
        pet_histories=PetHistory.where(pet_id: pet.id)
        pet_weight=pet_histories.map{ |pet_history| pet_history.weight }
        max=pet_weight.max
        return max
    end
end
