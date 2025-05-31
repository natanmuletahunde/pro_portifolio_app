import { getCloudflareContext } from "@opennextjs/cloudflare";

export async function GET() {
  const db = getCloudflareContext().env.NEXT_TODO_LIST_DB;
  const todos = await db.exec(`select * from Todos`);
  return new Response(JSON.stringify(todos));
}
