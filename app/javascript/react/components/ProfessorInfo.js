import React from 'react';
import { gql } from "apollo-boost";
import { useLazyQuery } from '@apollo/react-hooks';

const GET_PROFESSOR = gql`
  query getProfessor($id: ID!) {
    professor(professorId: $id) {
      id
      office
      email
    }
  }
`

const ProfessorInfo = ({id, name}) => {
  const [getProfessor, { loading, data }] = useLazyQuery(GET_PROFESSOR);

  return(
    <div>
      Professor: {name} <span onClick={() => getProfessor({variables: {id}})}>Click for contact Info</span>
      {data && data.professor && (
        <div>
          <div>email: {data.professor.email}</div>
          <div>office: {data.professor.office}</div>
        </div>
      )}
    </div>
  )
}

export default ProfessorInfo
