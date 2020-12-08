module ClientsHelper
    def pets_count(client)
        pets=Pet.where(client_id: client.id)
        pets.count
    end
end
