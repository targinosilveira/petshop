require 'digest/sha1'

class User < ActiveRecord::Base
  include Authentication
  include Authentication::ByPassword
  include Authentication::ByCookieToken

  has_many :clientes

  validates_presence_of     :login,                                         :message => "É preciso informar um nome de usuário."
  validates_length_of       :login,    :within => 3..40,                    :message => "Seu nome de usuário de ter entre 3 a 40 caracteres."
  validates_uniqueness_of   :login,                                         :message => "Nome de usuário já cadastrado no sistema."
  validates_format_of       :login,    :with => Authentication.login_regex, :message => "No nome de usuário use somente letras e números."

  validates_presence_of     :email,                                         :message => "É preciso informar um endereço de e-mail."
  validates_length_of       :email,    :within => 6..100,                   :message => 'Seu endereço de e-mail deve ter entre 6 e 100 caracteres.'
  validates_uniqueness_of   :email,                                         :message => "Endereço de e-mail já cadstradro no sistema."
  validates_format_of       :email,    :with => Authentication.email_regex, :message => "Endereço de e-mail com formato inva"

  

  # HACK HACK HACK -- how to do attr_accessible from here?
  # prevents a user from submitting a crafted form that bypasses activation
  # anything else you want your user to change should be added here.
  attr_accessible :login, :email, :name, :password, :password_confirmation, :master_id



  # Authenticates a user by their login name and unencrypted password.  Returns the user or nil.
  #
  # uff.  this is really an authorization, not authentication routine.  
  # We really need a Dispatch Chain here or something.
  # This will also let us return a human error message.
  #
  def self.authenticate(login, password)
    return nil if login.blank? || password.blank?
    u = find_by_login(login.downcase) # need to get the salt
    u && u.authenticated?(password) ? u : nil
  end

  def login=(value)
    write_attribute :login, (value ? value.downcase : nil)
  end

  def email=(value)
    write_attribute :email, (value ? value.downcase : nil)
  end

  protected
    


end
