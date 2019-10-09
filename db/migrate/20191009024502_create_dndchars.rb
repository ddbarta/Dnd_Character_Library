class CreateDndchars < ActiveRecord::Migration[5.1]
  def change
    create_table :dndchars do |t|

      t.string :charname
      t.string :charrace
      t.string :charclass
      t.integer :charlevel
      t.string :charalign
      t.integer :charexp
      t.string :charfaction
      t.integer :charstr
      t.integer :chardex
      t.integer :charcon
      t.integer :charint
      t.integer :charwis
      t.integer :charchar
      t.integer :charsavestr
      t.integer :charsavedex
      t.integer :charsaveint
      t.integer :charsavewis
      t.integer :charsavecon
      t.integer :charsavechar
      t.integer :characro
      t.integer :charanimal
      t.integer :chararcana
      t.integer :charathletic
      t.integer :chardeception
      t.integer :charhistory
      t.integer :charinsight
      t.integer :charintim
      t.integer :charinv
      t.integer :charmed
      t.integer :charnature
      t.integer :charperc
      t.integer :charperform
      t.integer :charpersuasion
      t.integer :charreligion
      t.integer :charslight
      t.integer :charstealth
      t.integer :charsurvive
      t.timestamps
    end
  end
end
