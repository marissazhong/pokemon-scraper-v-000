class Pokemon
  attr_accessor :name, :type, :db, :id
  @all = []
  def initialize(name:,type:,db:, id:0)
    @name = name
    @type = type
    @db = db
  end
  def self.save(name, type, db)
    new_poke = Pokemon.new(name: name, type: type, db: db)
    new_poke.id = @all.length-1
    @all << new_poke
  end
end
