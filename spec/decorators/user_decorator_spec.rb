require "spec_helper"

describe UserDecorator do
  let(:user) { create :user }
  let(:decorated_user) { user.decorate }

  it "tests full_name" do
    expect(decorated_user.full_name).to eq("#{user.name} #{user.surname}")
  end

  it "tests full_name_with_email" do
    expect(decorated_user.full_name_with_email).to eq("#{user.name} #{user.surname} (#{user.email})")
  end

  it "tests delegated methods" do
    expect(decorated_user.id).to eq(user.id)
    expect(decorated_user.email).to eq(user.email)
    expect(decorated_user.name).to eq(user.name)
    expect(decorated_user.surname).to eq(user.surname)
  end
end
