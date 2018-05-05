    <style>
* {
    color: inherit;
}
body {
    padding: 0px;
    font-family: 'verdana';
    font-size: 1.75em;
    padding: 8vw;
    text-align: justify;
}
quote {
    display: block;
    margin: 0em 0em 0.6em 0em;
}
div.quote-of-the-day {
    position: fixed;
    margin: 0;
    top: 0;
    left: 0;
    width: 84vw;
    height: 84vh;
    background-color: black;
    color: white;
    padding: 8vw;
}
div.quote {
    margin: 0em;
    display: none;
    vertical-align: middle;
}
h1.close {
    position: fixed;
    top: -4vh;
    right: 2vw;
    cursor: pointer;
    color: #440000;
}
div.fade-out {
    animation: fade 3.0s forwards;
}
@keyframes fade {
    from {
        color: white;
        background-color: black;
        visibility: visible;
    }
    to   { 
        color: transparent;
        background-color: transparent;
        display: none;
        visibility: hidden;
    }
}
    <div class="quote-of-the-day">

      <h1 class="close" onclick="this.parentElement.classList.add('fade-out')">&#215;</h1>

      <div class="quote">
        <quote><?php echo htmlspecialchars ($this->crystallmyteaQuote[crystallmytea_col_quotation]); ?></quote>
        <cite><?php echo htmlspecialchars ($this->crystallmyteaQuote[crystallmytea_col_author]); ?></cite>
        <time datetime="<?php echo htmlspecialchars ($this->crystallmyteaQuote[crystallmytea_col_date]); ?>">?php echo htmlspecialchars ($this->crystallmyteaQuote[crystallmytea_col_date]); ?></time>
      </div>

