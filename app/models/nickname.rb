class Nickname < ActiveRecord::Base
  def generate_nickname
    num = self.name.length
    gen = ""
    num.times do |i|
      gen = gen + self.name[i] + self.super_hero[i]
    end
    gen
  end
end
