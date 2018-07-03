class Pokemon
  attr_accessor :name, :type, :db, :id
  @all = []
  def initialize(name:,type:,db:, id:)
    @name, @type, @db, @id = name, type, db, id
  end
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name,type)
  end
  def self.find(id)
    db.execute("SELECT * FROM pokemon WHERE id=?",id)
    Pokemon.new()
  end
end
