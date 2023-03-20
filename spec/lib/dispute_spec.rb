# frozen_string_literal: true

require_relative '../../lib/models/dispute'

RSpec.describe Dispute do
  it 'can have a name' do
    dispute = Dispute.new(name: 'Person vs. Employer')
    expect(dispute.name).to eq('Person vs. Employer')
  end
end
