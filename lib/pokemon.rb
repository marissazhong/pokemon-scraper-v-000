class Pokemon
  attr_accessor :name, :type, :db, :id
  @all = []
  def initialize(name:,type:,db:, id:)
    @name, @type, @db, @id = name, type, db, id
  end
  def self.save(name, type, db)
    db.execute(INSERT INTO pokemon (id, name, type) VALUES (id, name, type))
  end
end
