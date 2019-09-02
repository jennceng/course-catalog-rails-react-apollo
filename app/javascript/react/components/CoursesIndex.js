import React from 'react'
import { useQuery } from '@apollo/react-hooks';
import { gql } from "apollo-boost";
import CourseTile from './CourseTile';

const GET_COURSES = gql`
  {
    allCourses {
      id
      name
      averageRating
    }
  }
`
export const CoursesIndex = () => {
  const { loading, error, data } = useQuery(GET_COURSES)
  if (loading) return <div>Loading...</div>;
  if (error) return <p>ERROR</p>;

  return (
      <div>
        <h2>Courses</h2>
        <table>
          <tbody>
          <tr>
            <th>Course Name</th>
            <th>Average Rating</th>
          </tr>
            {data.allCourses && data.allCourses.length > 0 && data.allCourses.map(course => (
              <CourseTile
                key={course.id}
                {...course}
              />
            ))}
          </tbody>
        </table>
      </div>
  )}


export default CoursesIndex;
