pub contract TeamsContract {

    pub var Teams: {String: Team}
    
    pub struct Team {
        pub let Name: String
        pub let Members: Int

        init(_Name: String, _Members: Int) {
            self.Name = _Name
            self.Members = _Members
        }
    }

    pub fun addTeam(Name: String, Members: Int) {
        let newTeam = Team(_Name: Name, _Members: Members)
        self.Teams[Name] = newTeam
    }

    init() {
        self.Teams = {}
    }

}
