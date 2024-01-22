// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";

const input = document.getElementById('upload_image');
const image = document.getElementById('imgFoto');
input.addEventListener('change', (e) => {
  if (e.target.files.length) {
    const src = URL.createObjectURL(e.target.files[0]);
    image.src = src;
}
});
