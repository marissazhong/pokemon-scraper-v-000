class Pokemon
  attr_accessor :name, :type, :db, :id, :hp
  @all = []
  def initialize(name:,type:,db:, id:)
    @name, @type, @db, @id = name, type, db, id
  end
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?);",name,type)
  end
  def self.find(id2,db)
    found = db.execute("SELECT * FROM pokemon WHERE id=?;",id2).flatten
    Pokemon.new(id:found[0],name:found[1],type:found[2],db:db)
  end
  def alter_hp()
end
