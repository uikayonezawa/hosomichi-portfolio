class MembersController < ApplicationController
  def index
      @members = Member.all.order(order: "ASC")
  end
end
