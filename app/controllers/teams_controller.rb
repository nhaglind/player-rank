class TeamsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

  def index 
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
    @team.team_players.new
  end

  def edit
    @team = current_user.teams.find(params[:id])
  end

  def create
    @team = Team.new(team_params)
    @team.user = current_user
    respond_to do |format|
      if @team.save
        format.html { redirect_to @team, notice: 'Team was made!' }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @team = Team.find(params[:id])
    respond_to do |format|
      if @team.update_attributes(team_params)
        format.html { redirect_to @team, notice: 'Team was updated!' }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @team = Team.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to matters_url, notice: 'Team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def team_params
    params.require(:team).permit(:team_name, team_player_attributes: [:id, :team_id, :player_id, :position])
  end
end
