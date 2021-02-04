require "encoder"

RSpec.describe Encoder do
  # == Run Length Encoding ==
  #
  # In this exercise we'll be building towards an implementation of run length
  # encoding. That's a way of compressing a string so that runs of the same
  # letter are de-duplicated and their length represented by a string.
  #
  # For example: "aaa" -> "a3"
  #              "abba" -> "ab2a"
  #
  # INSTRUCTIONS
  # 1. Uncomment the first test.
  # 2. Make it pass. Don't edit any of the test code. Ever! Only takeaway.rb
  # 3. When it passes, do a git commit.
  # 4. Uncomment the next test, make it pass, commit, etc.
  #
  # Some of them will ask you to talk to your coach after you've done them, but
  # also feel free to reach out whenever you get stuck. It should be the same
  # coach every time, the one who gave you this exercise. This is because they
  # will be learning what your misconceptions are and helping you correct them.
  #
  # It's important that you understand what's going on and the code you're
  # writing. If you're just trying out combinations, you should take a break.

  # it "gets the length of a string" do
  #   encoder = Encoder.new
  #   result_1 = encoder.get_length("aaa")
  #   result_2 = encoder.get_length("bbbbb")
  #   expect(result_1).to eq 3
  #   expect(result_2).to eq 5
  # end

  # INSTRUCTION: Do a commit before uncommenting the next test.

  # it "gets the first letter of a string" do
  #   encoder = Encoder.new
  #   result_1 = encoder.get_first_letter("aaa")
  #   result_2 = encoder.get_first_letter("bbbbb")
  #   expect(result_1).to eq "a"
  #   expect(result_2).to eq "b"
  # end

  # INSTRUCTION: Do a commit before uncommenting the next test.

  # it "gets the first letter and the length" do
  #   encoder = Encoder.new
  #   result_1 = encoder.get_first_letter_and_length("aaa")
  #   result_2 = encoder.get_first_letter_and_length("bbbbb")
  #   expect(result_1).to eq "a3"
  #   expect(result_2).to eq "b5"
  # end

  # INSTRUCTION: Do a commit before uncommenting the next test.
  # INSTRUCTION: Talk to your coach before moving on.

  # it "converts a string to a list of letters" do
  #   encoder = Encoder.new
  #   result_1 = encoder.string_to_list("aaa")
  #   result_2 = encoder.string_to_list("bbbbb")
  #   expect(result_1).to eq ["a", "a", "a"]
  #   expect(result_2).to eq ["b", "b", "b", "b", "b"]
  # end

  # INSTRUCTION: Do a commit before uncommenting the next test.

  # it "tells if the string is all 'a's" do
  #   encoder = Encoder.new
  #   result_1 = encoder.is_all_as?("aaa")
  #   result_2 = encoder.is_all_as?("abba")
  #   expect(result_1).to eq true
  #   expect(result_2).to eq false
  # end

  # INSTRUCTION: Do a commit before uncommenting the next test.

  # it "tells if the string is all a particular letter" do
  #   encoder = Encoder.new
  #   result_1 = encoder.is_all_this_letter?("aaa", "a")
  #   result_2 = encoder.is_all_this_letter?("abba", "b")
  #   expect(result_1).to eq true
  #   expect(result_2).to eq false
  # end

  # INSTRUCTION: Do a commit before uncommenting the next test.

  # it "tells if the string is all its first letter" do
  #   encoder = Encoder.new
  #   result_1 = encoder.is_all_first_letter?("aaa")
  #   result_2 = encoder.is_all_first_letter?("abba")
  #   expect(result_1).to eq true
  #   expect(result_2).to eq false
  # end

  # INSTRUCTION: Do a commit before uncommenting the next test.
  # INSTRUCTION: Talk to your coach before moving on.

  # it "gets the length of the first run of first letters" do
  #   # This one can be a little bit tricky. You may find it useful to think about
  #   # how you would do this on paper.
  #   encoder = Encoder.new
  #   result_1 = encoder.get_length_of_first_run("aaabba")
  #   result_2 = encoder.get_length_of_first_run("abba")
  #   result_3 = encoder.get_length_of_first_run("ccc")
  #   expect(result_1).to eq 3
  #   expect(result_2).to eq 1
  #   expect(result_3).to eq 3
  # end

  # INSTRUCTION: Do a commit before uncommenting the next test.
  # INSTRUCTION: Talk to your coach before moving on.

  # it "gets the run of first letters" do
  #   encoder = Encoder.new
  #   result_1 = encoder.get_first_run("aaabba")
  #   result_2 = encoder.get_first_run("bba")
  #   result_3 = encoder.get_first_run("ccc")
  #   expect(result_1).to eq "aaa"
  #   expect(result_2).to eq "bb"
  #   expect(result_3).to eq "ccc"
  # end

  # INSTRUCTION: Do a commit before uncommenting the next test.
  # INSTRUCTION: Talk to your coach before moving on.

  # it "gets the letters after the first run" do
  #   encoder = Encoder.new
  #   result_1 = encoder.get_after_first_run("aaabba")
  #   result_2 = encoder.get_after_first_run("bba")
  #   result_3 = encoder.get_after_first_run("a")
  #   expect(result_1).to eq "bba"
  #   expect(result_2).to eq "a"
  #   expect(result_3).to eq ""
  # end

  # INSTRUCTION: Do a commit before uncommenting the next test.
  # INSTRUCTION: Talk to your coach before moving on.

  # it "gets all of the runs of letters" do
  #   encoder = Encoder.new
  #   result_1 = encoder.get_all_runs("aaabba")
  #   result_2 = encoder.get_all_runs("bba")
  #   result_3 = encoder.get_all_runs("a")
  #   expect(result_1).to eq ["aaa", "bb", "a"]
  #   expect(result_2).to eq ["bb", "a"]
  #   expect(result_3).to eq ["a"]
  # end

  # INSTRUCTION: Do a commit before uncommenting the next test.
  # INSTRUCTION: Talk to your coach before moving on.

  # it "gets lengths of all runs of letters" do
  #   encoder = Encoder.new
  #   result_1 = encoder.get_lengths_of_all_runs("aaabba")
  #   result_2 = encoder.get_lengths_of_all_runs("bba")
  #   result_3 = encoder.get_lengths_of_all_runs("a")
  #   expect(result_1).to eq [3, 2, 1]
  #   expect(result_2).to eq [2, 1]
  #   expect(result_3).to eq [1]
  # end

  # INSTRUCTION: Do a commit before uncommenting the next test.

  # it "gets first letter and lengths of all runs" do
  #   encoder = Encoder.new
  #   result_1 = encoder.get_first_letter_and_length_of_runs("aaabba")
  #   result_2 = encoder.get_first_letter_and_length_of_runs("bba")
  #   result_3 = encoder.get_first_letter_and_length_of_runs("a")
  #   expect(result_1).to eq ["a3", "b2", "a1"]
  #   expect(result_2).to eq ["b2", "a1"]
  #   expect(result_3).to eq ["a1"]
  # end

  # INSTRUCTION: Do a commit before uncommenting the next test.

  # it "gets first letter and lengths of all runs but treats one-letter runs specially" do
  #   encoder = Encoder.new
  #   result_1 = encoder.get_first_letter_and_length_of_runs_with_special("aaabba")
  #   result_2 = encoder.get_first_letter_and_length_of_runs_with_special("bba")
  #   result_3 = encoder.get_first_letter_and_length_of_runs_with_special("a")
  #   expect(result_1).to eq ["a3", "b2", "a"]
  #   expect(result_2).to eq ["b2", "a"]
  #   expect(result_3).to eq ["a"]
  # end

  # INSTRUCTION: Do a commit before uncommenting the next test.

  # it "re-combines the strings and so does run length encoding fully" do
  #   encoder = Encoder.new
  #   result_1 = encoder.encode("abba")
  #   result_2 = encoder.encode("roooooaaaaaarrr")
  #   result_3 = encoder.encode("woooooooooooo i am doing iiiit!!!")
  #   expect(result_1).to eq "ab2a"
  #   expect(result_2).to eq "ro5a6r3"
  #   expect(result_3).to eq "wo12 i am doing i4t!3"
  # end
end
