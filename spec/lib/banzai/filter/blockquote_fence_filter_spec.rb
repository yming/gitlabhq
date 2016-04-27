require 'rails_helper'

describe Banzai::Filter::BlockquoteFenceFilter, lib: true do
  include FilterSpecHelper

  it 'convers blockquote fences to blockquote lines' do
    content = File.read(Rails.root.join('spec/fixtures/blockquote_fence_before.md'))
    expected = File.read(Rails.root.join('spec/fixtures/blockquote_fence_after.md'))

    output = filter(content)

    expect(output).to eq(expected)
  end
end
