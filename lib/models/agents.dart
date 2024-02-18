class ImageAgents {
  ImageAgents(this.image);
  final String image;
}

class Agents {
  Agents(this.name, this.country, this.description, this.listAgents, this.role);
  final String name;
  final String country;
  final String description;
  final List<ImageAgents> listAgents;
  final String role;
}
