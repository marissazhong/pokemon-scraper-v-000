class Pokemon
  attr_accessor :name, :type, :db, :id
  @all = []
  def initialize(name:,type:,db:, id:)
    @name, @type, @db, @id = name, type, db, id
  end
  def self.save(name, type, db)
    db.execute(INSERT INTO pokemon (name, type) values (name, type))
  end
end
