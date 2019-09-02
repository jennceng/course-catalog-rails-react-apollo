import React, { useState } from 'react';
import { gql } from "apollo-boost"
import { Link } from "react-router-dom"

const CourseTile = ({ id, name, averageRating }) => {
  return(
    <tr>
      <th><Link to={`/courses/${id}`}>{name} </Link></th>
      <th>Average Rating: {averageRating} </th>
    </tr>
  )
}

export default CourseTile;
