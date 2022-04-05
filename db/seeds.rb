# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

EligibleAdmin.create!(email: 'jacksonengel@tamu.edu')
EligibleAdmin.create!(email: 'ecblevins@tamu.edu')
EligibleAdmin.create!(email: 'jhassmann@tamu.edu')
EligibleAdmin.create!(email: 'dylanharden3@tamu.edu')
EligibleAdmin.create!(email: 'rwang0527@tamu.edu')

# For debug purposes, remove later
Plant.create!(name: 'Annual1', price: '10.99', category: 'Annuals', quantity: '5')
Plant.create!(name: 'Annual2', price: '5.99', category: 'Annuals', quantity: '8')
Plant.create!(name: 'Perennial1', price: '10.99', category: 'Perennials', quantity: '5')
Plant.create!(name: 'Perennial2', price: '10.99', category: 'Perennials', quantity: '5')
Plant.create!(name: 'Houseplant1', price: '10.99', category: 'Houseplants', quantity: '5')
Plant.create!(name: 'Houseplant2', price: '10.99', category: 'Houseplants', quantity: '5')
Plant.create!(name: 'Tree1', price: '10.99', category: 'Trees', quantity: '5')
Plant.create!(name: 'Tree2', price: '10.99', category: 'Trees', quantity: '5')
Plant.create!(name: 'Shrub1', price: '10.99', category: 'Shrubs', quantity: '5')
Plant.create!(name: 'Shrub2', price: '10.99', category: 'Shrubs', quantity: '5')
Plant.create!(name: 'Succulent1', price: '10.99', category: 'Succulents', quantity: '5')
Plant.create!(name: 'Succulent2', price: '10.99', category: 'Succulents', quantity: '5')
Plant.create!(name: 'Fruit1', price: '10.99', category: 'Fruits', quantity: '5')
Plant.create!(name: 'Fruit2', price: '10.99', category: 'Fruits', quantity: '5')
Plant.create!(name: 'Vegetable1', price: '10.99', category: 'Vegetables', quantity: '5')
Plant.create!(name: 'Vegetable2', price: '10.99', category: 'Vegetables', quantity: '5')
