class Pokemon
  attr_accessor :name, :type, :db, :id
  @all = []
  def initialize(name:,type:,db:,id:)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  def save(name, type, db)
    new_poke = Pokemon.new(name: name, type: type, db: db)
    @all << new_poke
  end
end
