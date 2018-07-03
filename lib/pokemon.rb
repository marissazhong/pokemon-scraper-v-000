class Pokemon
  attr_accessor :name, :type, :db, :id
  @all = []
  def initialize(name:,type:,db:, id:)
    @name, @type, @db, @id = name, type, db, id
  end
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?);",name,type)
  end
  def self.find(id2,db)
    puts db.execute("SELECT * FROM pokemon WHERE id=?;",id2)
    db.execute("SELECT * FROM pokemon WHERE id=?;",id2)
    #Pokemon.new()
  end
end
