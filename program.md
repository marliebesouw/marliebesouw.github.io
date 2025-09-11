<style>
  /* ...keep your existing styles... */

  /* Align speaker thumbnails with the text inside the reference card */
  .speakers-card .speaker-thumb-grid{
    float: none;              /* cancel the global right-float */
    display: grid;
    grid-template-columns: repeat(4, minmax(90px, 1fr));
    gap: 12px;
    margin: 12px 0 0 0;
    text-align: left;
    justify-items: start;
  }
  @media (max-width: 900px){
    .speakers-card .speaker-thumb-grid{
      grid-template-columns: repeat(2, minmax(0, 1fr));
    }
  }
</style>
