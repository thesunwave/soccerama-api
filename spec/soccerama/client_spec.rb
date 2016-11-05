require 'spec_helper'

describe Soccerama::Client do
  let(:subject) { Soccerama::Client.new('79tYQvxtoJU4u0wA2G9c7x0xCES6wj3WlYLDZP1XJKL9Zf6SBLiIFhkq2eOv') }


  describe '.competitions' do
    it 'must return array of competitions' do
      VCR.use_cassette('competitions_list') do
        expect(subject.competitions.any? { |h| h['active'] == true }).to be_truthy
      end
    end

    it 'must return competitions with seasons hash' do
      VCR.use_cassette('competitions_includes_seasons') do
        competitions = subject.competitions(options: :seasons)
        expect(competitions.first).to include('id', 'name', 'active', 'seasons')
      end
    end

    it 'must return one of competition' do
      VCR.use_cassette('one_competition') do
        expect(subject.competitions(43)).to include('id' => 43)
      end
    end

    it 'must return exception if unavailable request' do
      VCR.use_cassette('unpaid_plan') do
        expect { subject.competitions(13) }.to raise_error(Soccerama::Exceptions::UnpaidPlanException)
      end
    end
  end

  describe '.seasons' do
    it 'must return all available seasons' do
      VCR.use_cassette('all_seasons') do
        seasons = subject.seasons
        expect(seasons.first).to include('id', 'competition_id', 'name', 'active')
      end
    end

    it 'must return only one season' do
      VCR.use_cassette('one_season') do
        season = subject.seasons(350)
        expect(season).to include('id' => 350)
        expect(season).to include('id', 'competition_id', 'name', 'active')
      end
    end
  end

  describe '.teams' do
    it 'must return teams of season' do
      VCR.use_cassette('teams_list') do
        teams = subject.teams_by_season(350)
        expect(teams.first).to include('id', 'name', 'logo', 'twitter', 'venue_id')
      end
    end

    it 'must return only one team' do
      VCR.use_cassette('one_team') do
        expect(subject.teams_by_id(516)).to include('id' => 516)
      end
    end

    it 'must return all team matches in the season' do
      VCR.use_cassette('team_matches') do
        matches = subject.matches_by_team_season(518, 350)
        expect(matches).to include('id' => 518)
        expect(matches).to include('matches')
      end
    end
  end
end
