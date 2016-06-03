require 'spec_helper'

describe Soccerama::Client do
  let(:subject) { Soccerama::Client.new('79tYQvxtoJU4u0wA2G9c7x0xCES6wj3WlYLDZP1XJKL9Zf6SBLiIFhkq2eOv') }

  describe '.get_response' do
    it 'must return copmetitions' do
      expect(subject.get_response('competitions')).to be_a Hash
    end

    it 'must return seasons' do
      expect(subject.get_response('seasons')).to be_a Hash
    end
  end

  describe '.competitions' do
    it 'without params' do
      expect(subject.competitions).to be_a Hash
    end

    it 'with params' do
      expect(subject.competitions(13)).to be_a Hash
    end
  end

  describe '.seasons' do
    it 'without params' do
      expect(subject.seasons).to be_a Hash
    end

    it 'with params' do
      expect(subject.seasons(356)).to be_a Hash
    end
  end

  describe '.teams' do
    it 'teams_by_season' do
      expect(subject.teams_by_season(14)).to be_a Hash
    end

    it 'teams_by_id' do
      expect(subject.teams_by_id(516)).to be_a Hash
    end

    it 'matches_by_team_season' do
      expect(subject.matches_by_team_season(518, 350)).to be_a Hash
    end
  end
end
