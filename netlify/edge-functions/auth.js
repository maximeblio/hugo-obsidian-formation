export default async (request, context) => {
  const authHeader = request.headers.get("authorization");
  
  // Définissez vos identifiants ici
  // Par défaut: formation / ObsidianFormation2024
  const validAuth = "Basic Zm9ybWF0aW9uX3NjZDpzY2Q=";
  
  if (authHeader !== validAuth) {
    return new Response("Accès restreint - Formation Obsidian", {
      status: 401,
      headers: {
        "WWW-Authenticate": 'Basic realm="Formation Obsidian"',
        "Content-Type": "text/plain; charset=utf-8",
      },
    });
  }
  
  return context.next();
};

export const config = { path: "/*" };