require 'spec_helper'

describe Soccerama::Client do
  let(:subject) { Soccerama::Client.new('79tYQvxtoJU4u0wA2G9c7x0xCES6wj3WlYLDZP1XJKL9Zf6SBLiIFhkq2eOv') }


  describe '.competitions' do
    it 'must return array of competitions' do
      VCR.use_cassette('competitions_empty') do
        expect(subject.competitions).to be_a Array
      end
    end

    it 'must return competitions with seasons hash' do
      VCR.use_cassette('competitions_includes_seasons') do
        expect(subject.competitions(options: :seasons)).to be_a Array
      end
    end

    it 'must return one of competition' do
      VCR.use_cassette('one_competition') do
        expect(subject.competitions(43)).to be_a Hash
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
        expect(subject.seasons).to be_a Array
      end
    end

    it 'must return only one season' do
      VCR.use_cassette('one_season') do
        expect(subject.seasons(350)).to be_a Hash
      end
    end
  end

  describe '.teams' do
    it 'must return teams of season' do
      VCR.use_cassette('teams_list') do
        expect(subject.teams_by_season(350)).to be_a Array
      end
    end

    it 'must return only one team' do
      VCR.use_cassette('one_team') do
        expect(subject.teams_by_id(516)).to be_a Hash
      end
    end

    it 'must return all team matches in the season' do
      VCR.use_cassette('team_matches') do
        expect(subject.matches_by_team_season(518, 350)).to be_a Hash
      end
    end
  end
end
