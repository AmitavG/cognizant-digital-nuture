import React from 'react';

class Posts extends React.Component{
    constructor(props){
        super(props);

        this.state = {
            posts: [],
            hasError: false,
        };
    }

    loadPosts(){
        fetch('https://jsonplaceholder.typicode.com/posts')
        .then((response) => response.json())
        .then((data) => {
            this.setState({posts: data})
        })
        .catch((error) => {
            console.error("Error fetchign  posts: ", error);
            this.setState({hasError: true});
        });
    }

    componentDidMount() {
        this.loadPosts();
    }

    render() {
        const {posts, hasError} = this.state;

        if(hasError){
            return <p> something went wrong while loading posts</p>
        }

        return (
            <div>
                <h1>Blog Posts</h1>
                {posts.slice(0,10).map((post) => (
                    <div key={post.id}>
                        <h3>{post.title}</h3>
                        <p>{post.body}</p>
                    </div>
                ))}
            </div>
        );
    }

    componentDidCatch(error, info){
        alert('an error occured: ' +error.toString());
        console.error('error info: ', info);
        this.setState({hasError: true});
    }
}

export default Posts;