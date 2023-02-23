# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin / rails db: seed command(or created alongside the database with db: setup).

Entity.destroy_all

Entity.create!([{
                 name: 'Ips acuminatus',
                 name_en: 'Sharp-dentated bark beetle',
                 name_cz: 'Lýkožrout vrcholkový',
                 order: 1,
                 authority: 'Gyllenhal, 1827'
               },
                {
                  name: 'Ips amitinus',
                  name_en: 'Small spruce bark beetle',
                  name_cz: 'Lýkožrout menší',
                  order: 2,
                  authority: 'Eichhoff, 1871'
                },
                {
                  name: 'Ips cembrae',
                  name_en: 'Larch bark beetle',
                  name_cz: 'Lýkožrout modřínový',
                  order: 3,
                  authority: 'Heer, 1836'
                },
                {
                  name: 'Ips duplicatus',
                  name_en: 'Double-spined bark beetle',
                  name_cz: 'Lýkožrout severský',
                  order: 4,
                  authority: 'Sahlberg, 1836'
                },
                {
                  name: 'Ips sexdentatus',
                  name_en: 'Six-toothed bark beetle',
                  name_cz: 'Lýkožrout borový',
                  order: 5,
                  authority: 'Börner, 1776'
                },
                {
                  name: 'Ips typographus',
                  name_en: 'European spruce bark beetle',
                  name_cz: 'Lýkožrout smrkový',
                  order: 6,
                  authority: 'Linnaeus, 1758'
                }])

p "Created #{Entity.count} Entities"

Feature.destroy_all

Feature.create!([{
                  id: 1,
                  name_en: 'Body length',
                  name_cz: 'Velikost',
                  order: 1
                },
                 {
                   id: 2,
                   name_en: 'Elytra',
                   name_cz: 'Krovky',
                   order: 2
                 },
                 {
                   id: 3,
                   name_en: 'Elytral length/width ratio',
                   name_cz: 'Poměr délky krovek k jejich šířce',
                   order: 3
                 },
                 {
                   id: 4,
                   name_en: 'Elytral intervals',
                   name_cz: 'Mezirýží',
                   order: 4
                 },
                 {
                   id: 5,
                   name_en: 'Declivity',
                   name_cz: 'Prohloubenina na zadní části krovek',
                   order: 5
                 },
                 {
                   id: 6,
                   name_en: 'Number of spines on the side of declivity',
                   name_cz: 'Počet zubů na okraji prohloubeniny na zadní části krovek',
                   order: 6
                 },
                 {
                   id: 7,
                   name_en: 'Největší zub na okraji prohloubeniny',
                   name_cz: 'Largest declivital spine',
                   order: 7
                 },
                 {
                   id: 8,
                   name_en: 'Declivital spines',
                   name_cz: 'Zuby na okraji prohloubeniny',
                   order: 8
                 },
                 {
                   id: 9,
                   name_en: 'Antennal club sutures',
                   name_cz: 'Švy na tykadlové paličce',
                   order: 9
                 },
                 {
                   id: 10,
                   name_en: 'Host',
                   name_cz: 'Živné dřeviny',
                   order: 10
                 }])

p "Created #{Feature.count} Features"

Character.destroy_all

Character.create!([{
                    feature_id: 1,
                    feature_type_id: 1,
                    description_en: '',
                    description_cz: '',
                    order: 1
                  },
                   {
                     feature_id: 2,
                     feature_type_id: 2,
                     description_en: 'very shiny, lightly dotted in rows',
                     description_cz: 'velmi lesklé, jemně v řádcích tečkované',
                     order: 1
                   },
                   {
                     feature_id: 2,
                     feature_type_id: 2,
                     description_en: 'cylindrical, heavily dotted in rows',
                     description_cz: 'válcovité, silně v řádcích tečkované',
                     order: 2
                   },
                   {
                     feature_id: 2,
                     feature_type_id: 2,
                     description_en: 'not very heavily dotted in rows',
                     description_cz: 'nepříliš silně v řádcích tečkované',
                     order: 3
                   },
                   {
                     feature_id: 2,
                     feature_type_id: 2,
                     description_en: 'broadly cylindrical, not narrowed at the back',
                     description_cz: 'široce válcovité, vzadu nezůžené',
                     order: 4
                   },
                   {
                     feature_id: 2,
                     feature_type_id: 2,
                     description_en: 'distinctly narrowed at the back',
                     description_cz: 'vzadu zřetelně zůžené',
                     order: 5
                   },
                   {
                     feature_id: 2,
                     feature_type_id: 2,
                     description_en: 'slightly narrowed at the back',
                     description_cz: 'vzadu nepatrně zůžené',
                     order: 6
                   },
                   {
                     feature_id: 3,
                     feature_type_id: 1,
                     description_en: '',
                     description_cz: '',
                     order: 1
                   },
                   {
                     feature_id: 4,
                     feature_type_id: 2,
                     description_en: 'sparsely and finely dotted',
                     description_cz: 'řídce a jemně tečkovaná',
                     order: 1
                   },
                   {
                     feature_id: 4,
                     feature_type_id: 2,
                     description_en: 'wide and finely irregularly dotted',
                     description_cz: 'široká a jemně nepravidelně tečkovaná',
                     order: 2
                   },
                   {
                     feature_id: 4,
                     feature_type_id: 2,
                     description_en: 'dotted',
                     description_cz: 'tečkovaná',
                     order: 3
                   },
                   {
                     feature_id: 4,
                     feature_type_id: 2,
                     description_en: 'smooth shiny and not dotted',
                     description_cz: 'hladké lesklé a netečkované',
                     order: 4
                   },
                   {
                     feature_id: 4,
                     feature_type_id: 2,
                     description_en: 'sparsely, but distinctly dotted',
                     description_cz: 'spoře, ale zřetelně tečkovaná',
                     order: 5
                   },
                   {
                     feature_id: 5,
                     feature_type_id: 2,
                     description_en: 'mat, sparsely and finely dotted',
                     description_cz: 'matná, řídce a jemně tečkovaná',
                     order: 1
                   },
                   {
                     feature_id: 5,
                     feature_type_id: 2,
                     description_en: 'shiny and heavily dotted',
                     description_cz: 'lesklá a silně tečkovaná',
                     order: 2
                   },
                   {
                     feature_id: 6,
                     feature_type_id: 2,
                     description_en: 'three pairs',
                     description_cz: 'tři páry',
                     order: 1
                   },
                   {
                     feature_id: 6,
                     feature_type_id: 2,
                     description_en: 'four pairs',
                     description_cz: 'čtyři páry',
                     order: 2
                   },
                   {
                     feature_id: 6,
                     feature_type_id: 2,
                     description_en: 'six pairs',
                     description_cz: 'šest párů',
                     order: 3
                   },
                   {
                     feature_id: 7,
                     feature_type_id: 2,
                     description_en: 'second',
                     description_cz: 'druhý',
                     order: 1
                   },
                   {
                     feature_id: 7,
                     feature_type_id: 2,
                     description_en: 'third',
                     description_cz: 'třetí',
                     order: 2
                   },
                   {
                     feature_id: 7,
                     feature_type_id: 2,
                     description_en: 'fourth',
                     description_cz: 'čtvrtý',
                     order: 3
                   },
                   {
                     feature_id: 8,
                     feature_type_id: 2,
                     description_en: 'lower spine simple',
                     description_cz: 'spodní zub jednoduchý',
                     order: 1
                   },
                   {
                     feature_id: 8,
                     feature_type_id: 2,
                     description_en: 'lower spine wide and cut into a double spine at the upper edge',
                     description_cz: 'spodní zub široký a při horním okraji vykrojený do tvaru dvojzubu',
                     order: 2
                   },
                   {
                     feature_id: 8,
                     feature_type_id: 2,
                     description_en: 'the second and third spine from the top form a wide double spine with has two points',
                     description_cz: 'druhý a třetí zub od shora tvoří široký dvojzub, který má dva hroty',
                     order: 3
                   },
                   {
                     feature_id: 8,
                     feature_type_id: 2,
                     description_en: 'all spines simple conical shape',
                     description_cz: 'všechny zuby jednoduchého kuželovitého tvaru',
                     order: 4
                   },
                   {
                     feature_id: 9,
                     feature_type_id: 2,
                     description_en: 'bisinuate',
                     description_cz: 'zprohýbané',
                     order: 1
                   },
                   {
                     feature_id: 9,
                     feature_type_id: 2,
                     description_en: 'straight',
                     description_cz: 'rovné',
                     order: 2
                   },
                   {
                     feature_id: 9,
                     feature_type_id: 2,
                     description_en: 'angulate',
                     description_cz: 'lomené',
                     order: 3
                   },
                   {
                     feature_id: 10,
                     feature_type_id: 2,
                     description_en: 'Pinus div. sp.',
                     description_cz: 'borovice',
                     order: 1
                   },
                   {
                     feature_id: 10,
                     feature_type_id: 2,
                     description_en: 'Picea div. sp.',
                     description_cz: 'smrk',
                     order: 2
                   },
                   {
                     feature_id: 10,
                     feature_type_id: 2,
                     description_en: 'Larix div. sp.',
                     description_cz: 'modřín',
                     order: 3
                   }])

p "Created #{Character.count} Characters"
