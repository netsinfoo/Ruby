require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: "Example User", email: "user@example.com", password: "foobar",
            password_confirmation: "foobar")
  end
  # testa se o nome é valido
  test "should be valid" do
    assert @user.valid?
  end
  # testa se o nome esta presente
  test "name should be present" do
    @user.name = "    "
    assert_not @user.valid?
  end
# testa se o email está presente
  test "email should be present" do
    @user.email = "    "
    assert_not @user.valid?
  end
# testa se o nome não exede o limite max
  test "name should not be too long" do
    @user.name = "a" * 51 
    assert_not @user.valid?
  end
# testa se o email exede o limite max
  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end
# Testa a validade o nome do email
  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
      first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
        @user.email = valid_address
        assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end
  # Testa o padrão do elemento email se vem com algum caractere improprio
  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org 
      user.name@example.foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end
# Testa se o email utilizado é unico. No caso se ele já esta sendo usando.
  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save 
    assert_not duplicate_user.valid?
  end
  # Testa se o comprimento minimo da senha é menor que 6
  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end
  
end

