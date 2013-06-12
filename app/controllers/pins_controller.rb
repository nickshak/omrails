class PinsController < ApplicationController
  before_filter :authenticate_user!, except: [:index]
  
  
  
  def new
    @pin = current_user.pins.new
  
  
  
  def edit
    @pin = current_user.pins.find(params[:id])
  end
  
  
  
  def create
   @pin = current_user.pins.new(params[:pin])
  
  
  
  def update
   @pin = current_user.pins.find(params[:id])
  
  
  
  def destroy
    @pin = current_user.pins.find(params[:id])
    @pin.destroy
  