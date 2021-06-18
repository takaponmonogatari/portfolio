class Contact < ApplicationRecord
  enum subject: {
    その他のお問い合わせ: 0,
  }
end
