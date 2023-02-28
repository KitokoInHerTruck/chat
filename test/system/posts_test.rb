require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "should create post" do
    visit posts_url
    click_on "Crée une astuce"

    fill_in "Commentaire", with: @post.content
    fill_in "Titre", with: @post.title
    fill_in "Catlover", with: @post.user
    click_on "Astuce créée"

    assert_text "Astuce créée avec succès"
    click_on "Retour"
  end

  test "should update Post" do
    visit post_url(@post)
    click_on "Modifier cette astuce", match: :first

    fill_in "Commentaire", with: @post.content
    fill_in "Titre", with: @post.title
    fill_in "Catlover", with: @post.user
    click_on "Astuce modifiée"

    assert_text "Astuce modifiée avec succès"
    click_on "Retour"
  end

  test "should destroy Post" do
    visit post_url(@post)
    click_on "Supprimer cette astuce", match: :first

    assert_text "Astuce supprimée avec succès"
  end
end
