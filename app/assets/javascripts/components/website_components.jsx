class WebsiteComponents extends React.Component {
  render() {
  	var components = [];
  	this.props.components.forEach(function(component) {
  		components.push( <SingleComponent name={component.name} key={component.name} /> )
  	});
  	return <ul>{components}</ul>;
  }
}