#!/usr/bin/env ruby
require_relative '../../lib/water_jug'
require 'rspec'

describe WaterJug do
  describe 'Input Check' do
    let(:jug_cap) {"8,5,3".split(",").map(&:to_i)}
    let(:initial_jug_conf) {"8,0,0".split(",").map(&:to_i)}
    let(:final_jug_conf) {"4,4,0".split(",").map(&:to_i)}
    context 'given jug capacity correct' do
      it 'returns input jug capacity instance' do
        expect(jug_cap.length).to eq(3)
      end
    end

    context 'given initial jug configuration correct' do
      it 'returns input initial jug configuration instance' do
        expect(initial_jug_conf.length).to eq(3)
      end
    end

    context 'given final jug configuration correct' do
      it 'returns input final jug configuration instance' do
        expect(final_jug_conf.length).to eq(3)
      end
    end

    context 'given inputs return final configuration' do
      it 'throws exception due to mismatch of final configuration' do
        expect (WaterJug.new(jug_cap, initial_jug_conf, final_jug_conf).process_input)
      end
    end
  end
end
