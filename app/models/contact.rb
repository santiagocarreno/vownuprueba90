class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :last_name,  :validate => true
  attribute :nickname,  :captcha  => true
  attribute :foundation_name,  :validate => true
  attribute :phone,  :validate => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Registro de Fundación #{foundation_name}",
      :to => "dp@danipotter.com",
      :from => %("#{name}" <#{email}>)

      
    }
  end
end