// ================= HERO SLIDER =================

let currentIndex = 0;

function changeHeroImage() {
  const img = document.getElementById("hero-food");
  const name = document.getElementById("hero-name");

  if (!img || !name) return;

  currentIndex = (currentIndex + 1) % heroImages.length;

  img.src = heroImages[currentIndex].src;
  name.textContent = heroImages[currentIndex].name;
}

// ================= PAGE LOAD =================

document.addEventListener("DOMContentLoaded", () => {
  setInterval(changeHeroImage, 3000);

  // ✅ Show tip immediately on load
  loadTip("nutrition");
});


// ================= MEAL SUGGESTION =================

async function suggestMeal(type) {
  const loading = document.getElementById('loading');
  const card = document.getElementById('meal-card');

  // Hide card, show loader
  card.classList.remove('visible');
  loading.classList.add('active');

  try {
    const res = await fetch(`/meals/random?category=${type}`);
    const m = await res.json();


// SPONSORED LOGIC HERE
if (m.sponsored) {
  document.getElementById("sponsored-badge").style.display = "inline-block";

  document.getElementById("sponsor-info").style.display = "block";
  document.getElementById("sponsor-name").textContent = m.sponsor_name;

  document.getElementById("wa-link").href = m.sponsor_link;
  document.getElementById("wa-link").innerText = "Order Now";
} else {
  document.getElementById("sponsored-badge").style.display = "none";

  document.getElementById("sponsor-info").style.display = "none";
  document.getElementById("sponsor-name").textContent = "";

  document.getElementById("wa-link").innerText = "Chat with Chef";
}
    // Hide loader
    loading.classList.remove('active');

    // Populate UI
    document.getElementById('meal-name').textContent =
      m.name || "No name";

    document.getElementById('meal-desc').textContent =
      m.description || "No description available";

    // ✅ Handle image (local + external)
const img = document.getElementById("meal-image");

if (m.image_url && m.image_url.startsWith("http")) {
  img.src = m.image_url;
} else {
  img.src = m.image_url; // now works for /meals/rice.jpg
}

img.alt = m.name || "Meal Image";

    // Recipe steps
 const stepsList = document.getElementById('steps-list');

if (m.recipe_steps) {
  const items = m.recipe_steps
    .split('.')
    .map(s => s.trim())
    .filter(s => s.length > 0);

  if (m.sponsored) {
    // Use bullet style
    stepsList.innerHTML = items
      .map(s => `<li>• ${s}</li>`)
      .join('');

    stepsList.style.listStyleType = "none";
    stepsList.style.paddingLeft = "0";
  } else {
    // Use normal numbered steps
    stepsList.innerHTML = items
      .map(s => `<li>${s}</li>`)
      .join('');

    stepsList.style.listStyleType = "decimal";
    stepsList.style.paddingLeft = "20px";
  }
} else {
  stepsList.innerHTML = "<li>No steps available</li>";
}
    // YouTube link
    const yt = document.getElementById('yt-link');
    if (m.youtube_url) {
      yt.href = m.youtube_url;
      yt.style.display = "inline-block";
    } else {
      yt.style.display = "none";
    }

    // WhatsApp link
const wa = document.getElementById('wa-link');

if (m.sponsored) {
  document.getElementById("sponsored-badge").style.display = "inline-block";

  wa.href = m.sponsor_link;
  wa.innerText = "Order Now";
} else {
  document.getElementById("sponsored-badge").style.display = "none";

  wa.href = `https://wa.me/2347013019155?text=Help me cook ${encodeURIComponent(m.name)}`;
  wa.innerText = "Chat with Chef";
}

wa.classList.add('visible');

    // Show card
    card.classList.add('visible');

  } catch (error) {
    console.error("Error fetching meal:", error);
    loading.classList.remove('active');
  }

  // ✅ Update tip based on meal
  loadTip(mapMealToTip(type));
}


// ================= HEALTH TIPS =================

async function loadTip(category = "nutrition") {
  try {
    const res = await fetch(`/tips/random/${category}`);

    if (!res.ok) throw new Error("Tip not found");

    const t = await res.json();

    document.getElementById("tip-cat").textContent =
      t.category || "Health";

    document.getElementById("tip-title").textContent =
      category === "nutrition"
        ? "Daily Health Tip"
        : "Health Tip for Your Meal";

    document.getElementById("tip-body").textContent =
      t.content || "No tip available";

    // Hide placeholder, show card
    document.getElementById("tip-ph").style.display = "none";
    document.getElementById("tip-card").classList.add("visible");

  } catch (err) {
    console.error("Tip error:", err);
  }
}


// ================= CATEGORY MAPPING =================

function mapMealToTip(mealType) {
  if (mealType === "breakfast") return "nutrition";
  if (mealType === "lunch") return "health";
  if (mealType === "dinner") return "lifestyle";
  return "nutrition";
}