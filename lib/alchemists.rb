class Alchemist 

@@all = [] 

def self.all 
    @@all 
end


def self.create_alchemists(array_of_hashes)
    array_of_hashes.each do |hash| 
    new(hash)
    end 
end


def self.chapter_link(number) 
link = nil
    Alchemist.all.each_with_index do |alchemist,i|
    if i == number.to_i 
        link = alchemist.chapter_link
    end
end 
link  
end

def self.character_link(number)
link = nil 
    Alchemist.all.each_with_index do |a,i|
    if i == number.to_i 
    link = a.name_link
    end
    end
link
end 


def self.chapter_info(number)
input = number.to_i
link = self.chapter_link(number)
Webscraper.get_chapter_info(link)
end

def self.character_info(number)
input = number.to_i 
link = self.character_link(input)
Webscraper.get_character_info(link)
end 



attr_accessor :name, :rank, :title, :chapter_link, :name_link, :first_apperance

def initialize(name: nil, rank: nil , title: nil , name_link: nil, chapter_link: nil, first_apperance: nil)
    @name = name 
    @rank = rank 
    @title = title
    @chapter_link = chapter_link
    @name_link = name_link
    @first_apperance = first_apperance
    @@all << self
end




end
