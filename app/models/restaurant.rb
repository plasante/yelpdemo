class Restaurant < ApplicationRecord
	mount_uploader :image, ImageUploader

	has_many :reviews

	validates :name, :address, :phone, :website, :image, presence: true

	validates :phone, format: { with: /\A\(\d{3}\) \d{3}-\d{4}\z/,
      messages: "must be in format (123) 456-7890" 
    }

    validates :website, format: { with: /\Ahttps?:\/\/.*\z/,
      messages: "must start with http:// or https://" 
    }

    validates :address, format: { with: /\A.+{1,255}\z/,
      messages: "must be in the format 25 chemin Ste-Marie, Mascouche, PQ, J7J 1M8" 
    }
end
