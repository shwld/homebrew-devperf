# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Devperf < Formula
  desc "devperf is a CLI tool developed for obtaining DevOps' Four Keys."
  homepage "https://github.com/shwld/devops-metrics-tools"
  license "MIT"

  depends_on "gcc" => :build unless OS.mac?

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shwld/devperf/releases/download/v0.0.11/devops-metrics-tools-v0.0.11-aarch64-apple-darwin.tar.xz"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    elsif Hardware::CPU.intel?
      url "https://github.com/shwld/devperf/releases/download/v0.0.11/devops-metrics-tools-v0.0.11-x86_64-apple-darwin.tar.xz"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    end
  end

  on_linux do
    url "https://github.com/shwld/devperf/releases/download/v0.0.11/devops-metrics-tools-v0.0.11-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  end

  def install
    bin.install "devops-metrics-tools" => "devperf"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test devperf`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
