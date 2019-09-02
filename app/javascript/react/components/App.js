import React from 'react'
import { ApolloProvider } from '@apollo/react-hooks';
import { BrowserRouter, Route, Switch } from 'react-router-dom'
import ApolloClient from 'apollo-boost';
import { gql } from "apollo-boost";
import CoursesIndex from './CoursesIndex';
import CourseShow from './CourseShow';
const client = new ApolloClient();

export const App = () => {
  return (
    <BrowserRouter>
      <ApolloProvider client={client}>
        <div>
          <h2>My first Apollo app 🚀</h2>
            <Switch>
              <Route exact path="/" component={CoursesIndex} />
              <Route path="/courses/:id" component={CourseShow} />
              <Route path="/courses" component={CoursesIndex} />
            </Switch>
        </div>
      </ApolloProvider>
    </BrowserRouter>
  )}


export default App
