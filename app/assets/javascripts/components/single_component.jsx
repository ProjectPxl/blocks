class SingleComponent extends React.Component {
  render() {
  	return <li key={this.key}> {this.props.name} </li>
  }
}