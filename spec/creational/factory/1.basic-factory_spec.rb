require_relative '../../../1_creational/b.factory/1.basic-factory.rb'

RSpec.describe ProcessorFactory do
  describe ".create" do
    context "when given a valid processor type" do
      it "creates and returns an EchoProcessor instance" do
        processor = ProcessorFactory.create(:echo)
        expect(processor).to be_an_instance_of(EchoProcessor)
        expect(processor.process).to eq("Processing echo signal...")
      end

      it "creates and returns a DopplerProcessor instance" do
        processor = ProcessorFactory.create(:doppler)
        expect(processor).to be_an_instance_of(DopplerProcessor)
        expect(processor.process).to eq("Processing Doppler shift...")
      end
    end

    context "when given an invalid processor type" do
      it "raises a RuntimeError" do
        # Use a block to test for exceptions
        expect { ProcessorFactory.create(:unknown) }.to raise_error(RuntimeError, "Unknown processor type: unknown")
      end
    end
  end
end