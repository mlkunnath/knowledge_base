class Suggestion < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Sugerencia de #{name}",
      :to => "hola@noesplaje.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end