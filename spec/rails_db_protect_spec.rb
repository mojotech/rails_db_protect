require 'spec_helper'

def mock_env(name)
  allow(Rails).to receive(:env).and_return(ActiveSupport::StringInquirer.new(name))
end

describe 'RailsDbProtect' do
  let(:dangerous_tasks) { %w[ db:setup db:reset db:drop db:create db:schema:load ] }

  context 'given a production environment' do
    before { mock_env('production') }

    it 'prevents dangerous rake tasks' do
      dangerous_tasks.each do |task_name|
        expect { Rake::Task[task_name].execute }.to raise_error(RuntimeError)
      end
    end

    context 'given ENV["ALLOW_DANGEROUS_TASKS"] == "true"' do
      it 'allows dangerous rake tasks' do
        ENV['ALLOW_DANGEROUS_TASKS'] = 'true'

        dangerous_tasks.each do |task_name|
          expect { Rake::Task[task_name].execute }.not_to raise_error
        end

        ENV.delete('ALLOW_DANGEROUS_TASKS')
      end
    end
  end

  context 'given a test environment' do
    before { mock_env('test') }

    it 'allows dangerous rake tasks' do
      dangerous_tasks.each do |task_name|
        expect { Rake::Task[task_name].execute }.not_to raise_error
      end
    end
  end

  context 'given a development environment' do
    before { mock_env('development') }

    it 'allows dangerous rake tasks' do
      dangerous_tasks.each do |task_name|
        expect { Rake::Task[task_name].execute }.not_to raise_error
      end
    end
  end
end
