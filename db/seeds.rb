# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
  {
    email: 'herp@derp.com',
    password: 'herp'
  },
  {
    email: 'beep@thing.com',
    password: 'beep'
  }
  ])

meds = Med.create([
  {
    nickname: 'Klonopin',
    clinical_name: 'Clonazepam',
    count: 55,
    user_id: 1
  },
  {
    nickname: 'Lamotrigine',
    clinical_name: 'Lamotrigine',
    count: 100,
    user_id: 1
  },
  {
    nickname: 'Magnesium',
    clinical_name: 'Magnesium',
    count: 54,
    user_id: 1
  },
  {
    nickname: 'Potassium',
    clinical_name: 'IC-Klor-Con',
    count: 32,
    user_id: 2
  },
  {
    nickname: 'Omaprazole',
    clinical_name: 'Omaprazole',
    count: 8,
    user_id: 2
  }])
