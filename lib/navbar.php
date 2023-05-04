<div class="container1">

  <nav class="menu-container">
    <!-- menu burger -->
    <input type="checkbox" aria-label="Toggle menu" />
    <span></span>
    <span></span>
    <span></span>

    <!-- logo -->
    <a href="" class="menu-logo">
      <img src="images/s.png" alt="My Awesome Website" />
    </a>

    <!-- menu liens -->
    <div class="menu">
      <ul>
        <li><a href="index.php">Accueil</a></li>

        <li><a href="news.php">Actualités</a></li>

        <li><a href="#docs">Contact</a></li>
        <?php
        /**
         * Checks if the user is in Modo mode and displays a link to create a post if they are.
         */
        if (isset($_SESSION["Modo"])) {
          if ($_SESSION["Modo"] == TRUE) {
            echo "<li><a href='createPost.php'>Crée un post</a></li>";
          }
        }
        ?>
      </ul>
      <ul>

        <?php
        /**
         * Displays a navigation bar with login and registration links if the user is not logged in, and a welcome message and logout link if the user is logged in.
         */

        if (isset($_SESSION["User"])) {
          echo "<li><a>Hello, " . $_SESSION["Username"] . "</a></li>";
          echo "<li><a href='login_register/logout.php'>Déco</a></li>";
        } else {
        ?>

          <li><a href="register-form.php">S'inscrire</a></li>

          <li><a href="login-form.php">Connexion</a></li>
        <?php
        }

        ?>
      </ul>
    </div>
  </nav>


</div>