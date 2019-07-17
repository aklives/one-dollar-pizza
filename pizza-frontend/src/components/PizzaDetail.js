import React from 'react';
import Reviews from './Reviews'
import NewReview from './NewReview'


class PizzaDetail extends React.Component {

state = {
  reviews: []
}

componentDidMount(){
  fetch('http://localhost:3000/reviews')
  .then(res => res.json())
  .then(reviews => {
    this.setState({
      reviews: reviews
    })
  })
}


removeReview = (event, reviewId) => {
  event.preventDefault()
  let singleReview = this.state.reviews.find(review => review.id === reviewId)
  let newReviews = this.state.reviews.filter(review => review.id !== singleReview.id)

  fetch(`http://localhost:3000/reviews/${reviewId}`, {
    method: 'DELETE'})
  .then(response => response.json())
  .then(review => {
    this.setState({
      reviews: newReviews
    })
  })
}


render(){
  let filteredReviews = this.state.reviews.filter(review => review.pizzaplace_id === this.props.pizzaplace.id)
  return (
  <div>
    <p><strong>Name:</strong></p>
    <p>{this.props.pizzaplace.name}</p>
    <p><strong>Address:</strong></p>
    <p>{this.props.pizzaplace.address} {this.props.pizzaplace.zipcode}</p>
    <p><strong>Average Rating:</strong> {this.props.pizzaplace.average_rating}</p>
    <p><strong>Reviews:</strong></p><br/>
    {filteredReviews.map(review => <Reviews removeReview={this.removeReview} key={review.id} handleReviewEdit={this.props.handleReviewEdit} review={review} pizzaplace={this.props.pizzaplace}/>)}
    <NewReview handleReviewEdit={this.props.handleReviewEdit} pizzaplace={this.props.pizzaplace}/>
  </div>

  )
}
}


export default PizzaDetail
