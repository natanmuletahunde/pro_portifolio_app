export default function AboutLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <div>
      <header>
        <nav>Home, About</nav>
      </header>
      {children}
    </div>
  );
}
