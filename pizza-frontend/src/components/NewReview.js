import React from 'react'

class NewReview extends React.Component {

  state = {
    newReview: ""
  }

  handleNewReviewSubmit = (event) => {
    event.preventDefault()
    fetch('http://localhost:3000/reviews', {
      method: "POST",
      headers: {
        "Accept":"application/json",
        "Content-Type":"application/json"
      },
      body: JSON.stringify({
        content: this.state.newReview,
        pizzaplace_id: this.props.pizzaplace.id,
        user_id: 1
      })
    })
    .then(res => res.json())
    .then(newReview => this.setState({content: newReview}))

  }

  handleClick = (event) => {
    this.setState({
    [event.target.name]: event.target.value
  })
  }

  render(){
    return(
      <form onSubmit={this.handleNewReviewSubmit}>
        <div>
          <label htmlFor="review">Review:</label>
          <textarea type="text" name="newReview" value={this.state.newReview} onChange={this.handleClick} placeholder="Enter new review..." />
        </div>
        <button onClick={this.props.handleReviewEdit}>Back To Pizzas</button>
        <input type="submit" value="Add review" />
      </form>



    )
  }
}
export default NewReview
