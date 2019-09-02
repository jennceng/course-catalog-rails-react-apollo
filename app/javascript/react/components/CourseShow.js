import React from 'react';
import { useQuery } from '@apollo/react-hooks';
import { gql } from "apollo-boost";
import { Link } from "react-router-dom"
import ProfessorInfo from './ProfessorInfo';

const GET_COURSE = gql`
    query getCourse($id: ID!) {
      course(courseId: $id) {
        name
        professor {
          id
          name
        }
        reviews {
          id
          rating
          body
        }
      }
    }
`
const Course = (props) => {
  const { loading, error, data } = useQuery(GET_COURSE, {variables: {id: props.match.params.id}})
  if (loading) return <div>Loading...</div>;
  if (error) return <p>ERROR</p>;
  return (
    <div>
    <Link to="/courses">Courses Index</Link>
    {data.course && <h1>{data.course.name}</h1>}
    {data.course && data.course.professor && <ProfessorInfo {...data.course.professor} />}
    <table>
      <tbody>
        <tr>
          <th>Review Rating</th>
          <th>Review Body</th>
        </tr>
        {data.course && (
          <React.Fragment>
              {data.course.reviews.map(review => (<tr key={review.id}><th>{review.rating}</th> <th>{review.body}</th></tr>))}
          </React.Fragment>
        )}
      </tbody>
      </table>
    </div>
  )
}

export default Course;
