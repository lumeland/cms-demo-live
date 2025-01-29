import cms from "blog/_cms.ts";

// Enable authentication
cms.auth({
  admin: "demo",
});

// Enable git to push changes
cms.git();

export default cms;
