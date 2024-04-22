(
  props => {
    const {button, inputs, header} = props

    button.addEventListener('click', () => {
      button.classList.contains('disabled')
        ? header.style.visibility = 'visible'
        : ( () => {
          let username = document.getElementById("username")
          let password = document.getElementById("password")
          fetch('/spaceplus/login', {
            method: 'POST',
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ username: username.value, password: password.value }),
          }).then(res => {
            console.log('response status: ' + res.status);
            if (res.status == 204)
              window.location.href = '/spaceplus/browser'
            else
              document.getElementById('errorlabel').style.visibility = 'visible'
          })
        } )()
    })

    inputs.forEach(input => {
      input.addEventListener('input', () => {
        button.classList.toggle('disabled', (
          bool => {
            bool ? header.style.visibility = 'hidden' : null
            return !bool
          }
        )(inputs.every(element => element.value.trim().length !== 0)))
        document.getElementById('errorlabel').style.visibility = 'hidden'
      })
    })
  }
)
({
  button: document.getElementById('commit'),
  inputs: [...document.querySelectorAll('input')],
  header: document.getElementById('header')
})
