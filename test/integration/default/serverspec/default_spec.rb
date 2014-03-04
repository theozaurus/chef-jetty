require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe 'chef-jetty::default' do
  it 'has installed java' do
    expect(package 'openjdk-6-jdk').to be_installed
  end

  describe 'jetty service' do
    it "is enabled for startup" do
      expect(service 'jetty').to be_enabled
    end

    it "is running" do
      expect(service 'jetty').to be_running
    end

    it "is listening on port 8983" do
      expect(port 8983).to be_listening
    end
  end

  describe 'user' do
    it 'has been created' do
      expect(user 'jetty').to exist
    end

    it 'belongs to a group' do
      expect(user 'jetty').to belong_to_group 'adm'
    end

    it 'does not allow login' do
      expect(user 'jetty').to have_login_shell '/bin/false'
    end

    describe 'directories' do
      it 'included home' do
        expect(user 'jetty').to have_home_directory '/usr/share/jetty'
      end

      describe 'context' do
        it 'is included' do
          expect(file '/usr/share/jetty/contexts').to be_directory
        end

        it 'is owned' do
          expect(file '/usr/share/jetty/contexts').to be_owned_by 'jetty'
        end

        it 'is grouped' do
          expect(file '/usr/share/jetty/contexts').to be_grouped_into 'adm'
        end

        it 'has mode set' do
          expect(file '/usr/share/jetty/contexts').to be_mode 755
        end
      end

      it 'included webapps' do
        expect(file'/usr/share/jetty/webapps').to be_directory
      end
    end
  end

  describe 'directories' do
    describe 'log' do
      it 'is included' do
        expect(file '/var/log/jetty').to be_directory
      end

      it 'has mode set' do
        expect(file '/var/log/jetty').to be_mode 700
      end
    end

    describe 'cache' do
      it 'is included' do
        expect(file '/var/cache/jetty').to be_directory
      end

      it 'has mode set' do
        expect(file '/var/cache/jetty').to be_mode 755
      end
    end
  end
end
