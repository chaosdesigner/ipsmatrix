# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin / rails db: seed command(or created alongside the database with db: setup).

Entity.destroy_all

Entity.create!([{
                 name: 'Ips acuminatus',
                 name_en: 'Sharp-dentated bark beetle',
                 name_cz: 'Lýkožrout vrcholkový',
                 seq: 1,
                 authority: 'Gyllenhal, 1827'
               },
                {
                  name: 'Ips amitinus',
                  name_en: 'Small spruce bark beetle',
                  name_cz: 'Lýkožrout menší',
                  seq: 2,
                  authority: 'Eichhoff, 1871'
                },
                {
                  name: 'Ips cembrae',
                  name_en: 'Larch bark beetle',
                  name_cz: 'Lýkožrout modřínový',
                  seq: 3,
                  authority: 'Heer, 1836'
                },
                {
                  name: 'Ips duplicatus',
                  name_en: 'Double-spined bark beetle',
                  name_cz: 'Lýkožrout severský',
                  seq: 4,
                  authority: 'Sahlberg, 1836'
                },
                {
                  name: 'Ips sexdentatus',
                  name_en: 'Six-toothed bark beetle',
                  name_cz: 'Lýkožrout borový',
                  seq: 5,
                  authority: 'Börner, 1776'
                },
                {
                  name: 'Ips typographus',
                  name_en: 'European spruce bark beetle',
                  name_cz: 'Lýkožrout smrkový',
                  seq: 6,
                  authority: 'Linnaeus, 1758'
                }])

p "Created #{Entity.count} Entities"

Feature.destroy_all

Feature.create!([{
                  id: 1,
                  name_en: 'Body',
                  name_cz: 'Tělo',
                  seq: 1
                },
                 {
                   id: 2,
                   name_en: 'Elytra',
                   name_cz: 'Krovky',
                   seq: 2
                 },
                 {
                   id: 3,
                   name_en: 'Elytral length',
                   name_cz: 'Délka krovek',
                   seq: 3
                 },
                 {
                   id: 4,
                   name_en: 'Elytral intervals',
                   name_cz: 'Mezirýží',
                   seq: 4
                 },
                 {
                   id: 5,
                   name_en: 'Declivity',
                   name_cz: 'Prohloubenina na zadní části krovek',
                   seq: 5
                 },
                 {
                   id: 6,
                   name_en: 'Number of spines on the side of declivity',
                   name_cz: 'Počet zubů na okraji prohloubeniny na zadní části krovek',
                   seq: 6
                 },
                 {
                   id: 7,
                   name_en: 'Largest declivital spine',
                   name_cz: 'Největší zub na okraji prohloubeniny',
                   seq: 7
                 },
                 {
                   id: 8,
                   name_en: 'Declivital spines',
                   name_cz: 'Zuby na okraji prohloubeniny',
                   seq: 8
                 },
                 {
                   id: 9,
                   name_en: 'Antennal club sutures',
                   name_cz: 'Švy na tykadlové paličce',
                   seq: 9
                 },
                 {
                   id: 10,
                   name_en: 'Host',
                   name_cz: 'Živné dřeviny',
                   seq: 10
                 }])

p "Created #{Feature.count} Features"

Character.destroy_all

Character.create!([{
                    feature_id: 1,
                    feature_type_id: 1,
                    description_en: 'body length [mm]',
                    description_cz: 'délka [mm]',
                    seq: 1
                  },
                   {
                     feature_id: 2,
                     feature_type_id: 2,
                     description_en: 'very shiny, lightly dotted in rows',
                     description_cz: 'velmi lesklé, jemně v řádcích tečkované',
                     seq: 1
                   },
                   {
                     feature_id: 2,
                     feature_type_id: 2,
                     description_en: 'cylindrical, heavily dotted in rows',
                     description_cz: 'válcovité, silně v řádcích tečkované',
                     seq: 2
                   },
                   {
                     feature_id: 2,
                     feature_type_id: 2,
                     description_en: 'not very heavily dotted in rows',
                     description_cz: 'nepříliš silně v řádcích tečkované',
                     seq: 3
                   },
                   {
                     feature_id: 2,
                     feature_type_id: 2,
                     description_en: 'broadly cylindrical, not narrowed at the back',
                     description_cz: 'široce válcovité, vzadu nezůžené',
                     seq: 4
                   },
                   {
                     feature_id: 2,
                     feature_type_id: 2,
                     description_en: 'distinctly narrowed at the back',
                     description_cz: 'vzadu zřetelně zůžené',
                     seq: 5
                   },
                   {
                     feature_id: 2,
                     feature_type_id: 2,
                     description_en: 'slightly narrowed at the back',
                     description_cz: 'vzadu nepatrně zůžené',
                     seq: 6
                   },
                   {
                     feature_id: 3,
                     feature_type_id: 1,
                     description_en: 'elytral length/width ratio',
                     description_cz: 'poměr délky krovek k jejich šířce',
                     seq: 1
                   },
                   {
                     feature_id: 4,
                     feature_type_id: 2,
                     description_en: 'sparsely and finely dotted',
                     description_cz: 'řídce a jemně tečkovaná',
                     seq: 1
                   },
                   {
                     feature_id: 4,
                     feature_type_id: 2,
                     description_en: 'wide and finely irregularly dotted',
                     description_cz: 'široká a jemně nepravidelně tečkovaná',
                     seq: 2
                   },
                   {
                     feature_id: 4,
                     feature_type_id: 2,
                     description_en: 'dotted',
                     description_cz: 'tečkovaná',
                     seq: 3
                   },
                   {
                     feature_id: 4,
                     feature_type_id: 2,
                     description_en: 'smooth shiny and not dotted',
                     description_cz: 'hladké lesklé a netečkované',
                     seq: 4
                   },
                   {
                     feature_id: 4,
                     feature_type_id: 2,
                     description_en: 'sparsely, but distinctly dotted',
                     description_cz: 'spoře, ale zřetelně tečkovaná',
                     seq: 5
                   },
                   {
                     feature_id: 5,
                     feature_type_id: 2,
                     description_en: 'mat, sparsely and finely dotted',
                     description_cz: 'matná, řídce a jemně tečkovaná',
                     seq: 1
                   },
                   {
                     feature_id: 5,
                     feature_type_id: 2,
                     description_en: 'shiny and heavily dotted',
                     description_cz: 'lesklá a silně tečkovaná',
                     seq: 2
                   },
                   {
                     feature_id: 6,
                     feature_type_id: 2,
                     description_en: 'three pairs',
                     description_cz: 'tři páry',
                     seq: 1
                   },
                   {
                     feature_id: 6,
                     feature_type_id: 2,
                     description_en: 'four pairs',
                     description_cz: 'čtyři páry',
                     seq: 2
                   },
                   {
                     feature_id: 6,
                     feature_type_id: 2,
                     description_en: 'six pairs',
                     description_cz: 'šest párů',
                     seq: 3
                   },
                   {
                     feature_id: 7,
                     feature_type_id: 2,
                     description_en: 'second',
                     description_cz: 'druhý',
                     seq: 1
                   },
                   {
                     feature_id: 7,
                     feature_type_id: 2,
                     description_en: 'third',
                     description_cz: 'třetí',
                     seq: 2
                   },
                   {
                     feature_id: 7,
                     feature_type_id: 2,
                     description_en: 'fourth',
                     description_cz: 'čtvrtý',
                     seq: 3
                   },
                   {
                     feature_id: 8,
                     feature_type_id: 2,
                     description_en: 'lower spine simple',
                     description_cz: 'spodní zub jednoduchý',
                     seq: 1
                   },
                   {
                     feature_id: 8,
                     feature_type_id: 2,
                     description_en: 'lower spine wide and cut into a double spine at the upper edge',
                     description_cz: 'spodní zub široký a při horním okraji vykrojený do tvaru dvojzubu',
                     seq: 2
                   },
                   {
                     feature_id: 8,
                     feature_type_id: 2,
                     description_en: 'the second and third spine from the top form a wide double spine with has two points',
                     description_cz: 'druhý a třetí zub od shora tvoří široký dvojzub, který má dva hroty',
                     seq: 3
                   },
                   {
                     feature_id: 8,
                     feature_type_id: 2,
                     description_en: 'all spines simple conical shape',
                     description_cz: 'všechny zuby jednoduchého kuželovitého tvaru',
                     seq: 4
                   },
                   {
                     feature_id: 9,
                     feature_type_id: 2,
                     description_en: 'bisinuate',
                     description_cz: 'zprohýbané',
                     seq: 1
                   },
                   {
                     feature_id: 9,
                     feature_type_id: 2,
                     description_en: 'straight',
                     description_cz: 'rovné',
                     seq: 2
                   },
                   {
                     feature_id: 9,
                     feature_type_id: 2,
                     description_en: 'angulate',
                     description_cz: 'lomené',
                     seq: 3
                   },
                   {
                     feature_id: 10,
                     feature_type_id: 2,
                     description_en: 'Pinus div. sp.',
                     description_cz: 'borovice',
                     seq: 1
                   },
                   {
                     feature_id: 10,
                     feature_type_id: 2,
                     description_en: 'Picea div. sp.',
                     description_cz: 'smrk',
                     seq: 2
                   },
                   {
                     feature_id: 10,
                     feature_type_id: 2,
                     description_en: 'Larix div. sp.',
                     description_cz: 'modřín',
                     seq: 3
                   }])

p "Created #{Character.count} Characters"

p "Creating key"

require 'csv'

csv_text = File.read(Rails.root.join('db', 'data', 'key_definition.csv'))
csv = CSV.parse(csv_text, :headers => false)
csv.each do |row|
  s = State.new
  s.character_id = row[0]
  s.entity_id = row[1]
  s.sex_id = row[2]
  s.value_min = row[3]
  s.value_max = row[4]
  s.save
end

p "Key created."
