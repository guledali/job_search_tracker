# Job Search Tracker
# Jobbsökningsspårare

[![Rails](https://img.shields.io/badge/Rails-8.1.2-red.svg)](https://rubyonrails.org/)
[![Ruby](https://img.shields.io/badge/Ruby-3.4.7-red.svg)](https://www.ruby-lang.org/)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind%20CSS-3.4.0-38B2AC.svg)](https://tailwindcss.com/)
[![Hotwire](https://img.shields.io/badge/Hotwire-Stimulus%20%2B%20Turbo-FF0000.svg)](https://hotwired.dev/)

---

## EN / SV

---

## English

A modern, Progressive Web Application (PWA) for tracking job applications built with Ruby on Rails 8. This application helps you manage your job search process by keeping track of applications from different job sites like LinkedIn and Indeed.

### Features

- 🌙 **Dark Mode Toggle** - Seamless light/dark theme switching with persistence
- 📱 **Progressive Web App** - Install on any device with offline support
- 🌍 **Internationalization** - Full support for English and Swedish languages
- 📊 **Statistics Dashboard** - Visual overview of application status
- 🔍 **Filtering & Sorting** - Filter by source (LinkedIn, Indeed) and status
- 🎨 **Modern UI** - Clean design following Refactoring UI principles
- ⚡ **Hotwire Powered** - Fast, responsive interactions with Stimulus & Turbo

### Tech Stack

#### Backend
- **Ruby on Rails 8.1.2** - Web framework with built-in PWA support
- **Ruby 3.4.7** - Programming language
- **SQLite3** - Default database (development)

#### Frontend
- **Tailwind CSS 3.4.0** - Utility-first CSS framework
- **Hotwire (Stimulus + Turbo)** - Modern JavaScript framework
- **Import Maps** - JavaScript dependency management

#### Development Tools
- **Kamal** - Deployment tool
- **Docker** - Containerization
- **PWA** - Progressive Web App capabilities

#### Design Principles
- **Refactoring UI** - Adam Wathan's design methodology
- **Mobile-First** - Responsive design for all devices
- **Accessibility** - Semantic HTML and proper contrast ratios

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd job_search_tracker
   ```

2. **Install dependencies**
   ```bash
   bundle install
   ```

3. **Setup database**
   ```bash
   bin/rails db:prepare
   ```

4. **Start the server**
   ```bash
   bin/rails server
   ```

5. **Visit the application**
   Open http://localhost:3000 in your browser

### Usage

- **View Applications**: See all your job applications in a clean, organized list
- **Track Status**: Monitor application status (Applied, Interviewing, Pending, Rejected)
- **Filter Results**: Filter by job source (LinkedIn, Indeed) or status
- **Dark Mode**: Toggle between light and dark themes
- **Install as PWA**: Add to your home screen for app-like experience

### Project Structure

```
app/
├── assets/
│   ├── images/          # Favicon and app icons
│   └── stylesheets/     # Tailwind CSS
├── controllers/
│   ├── application_controller.rb
│   └── jobs_controller.rb
├── javascript/
│   └── controllers/     # Stimulus controllers
├── views/
│   ├── layouts/         # Application layout with PWA meta tags
│   ├── jobs/           # Job application views
│   └── pwa/            # PWA manifest and service worker
└── helpers/
    └── application_helper.rb

config/
├── locales/            # I18n translation files (en.yml, sv.yml)
└── routes.rb          # Application routes
```

### Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run tests and linting
5. Submit a pull request

---

## Svenska

En modern, Progressiv Webbapplikation (PWA) för att spåra jobbansökningar byggd med Ruby on Rails 8. Denna applikation hjälper dig att hantera din jobbsökningsprocess genom att hålla koll på ansökningar från olika jobbsajter som LinkedIn och Indeed.

### Funktioner

- 🌙 **Mörkt Läge** - Sömlös växling mellan ljus/mörkt tema med persistens
- 📱 **Progressiv Webbapp** - Installera på vilken enhet som helst med offline-stöd
- 🌍 **Internationalisering** - Fullt stöd för engelska och svenska
- 📊 **Statistik-dashboard** - Visuell översikt av ansökningsstatus
- 🔍 **Filtrering & Sortering** - Filtrera efter källa (LinkedIn, Indeed) och status
- 🎨 **Modern UI** - Ren design som följer Refactoring UI-principer
- ⚡ **Hotwire-drivna** - Snabba, responsiva interaktioner med Stimulus & Turbo

### Teknikstack

#### Backend
- **Ruby on Rails 8.1.2** - Webb-ramverk med inbyggt PWA-stöd
- **Ruby 3.4.7** - Programmeringsspråk
- **SQLite3** - Standarddatabas (utveckling)

#### Frontend
- **Tailwind CSS 3.4.0** - Utility-first CSS-ramverk
- **Hotwire (Stimulus + Turbo)** - Modernt JavaScript-ramverk
- **Import Maps** - JavaScript-beroendehantering

#### Utvecklingsverktyg
- **Kamal** - Deploymentsverktyg
- **Docker** - Containerisering
- **PWA** - Progressiv Webbapp-funktioner

#### Designprinciper
- **Refactoring UI** - Adam Wathans designmetodik
- **Mobile-First** - Responsiv design för alla enheter
- **Tillgänglighet** - Semantisk HTML och korrekta kontrastförhållanden

### Installation

1. **Klona repot**
   ```bash
   git clone <repository-url>
   cd job_search_tracker
   ```

2. **Installera beroenden**
   ```bash
   bundle install
   ```

3. **Sätt upp databas**
   ```bash
   bin/rails db:prepare
   ```

4. **Starta servern**
   ```bash
   bin/rails server
   ```

5. **Besök applikationen**
   Öppna http://localhost:3000 i din webbläsare

### Användning

- **Visa Ansökningar**: Se alla dina jobbansökningar i en ren, organiserad lista
- **Spåra Status**: Övervaka ansökningsstatus (Ansökt, Intervju, Väntar, Avböjd)
- **Filtrera Resultat**: Filtrera efter jobbkälla (LinkedIn, Indeed) eller status
- **Mörkt Läge**: Växla mellan ljust och mörkt tema
- **Installera som PWA**: Lägg till på din hemskärm för app-liknande upplevelse

### Projektstruktur

```
app/
├── assets/
│   ├── images/          # Favicon och app-ikoner
│   └── stylesheets/     # Tailwind CSS
├── controllers/
│   ├── application_controller.rb
│   └── jobs_controller.rb
├── javascript/
│   └── controllers/     # Stimulus controllers
├── views/
│   ├── layouts/         # Applikationslayout med PWA-meta-taggar
│   ├── jobs/           # Jobbansöknings-vyer
│   └── pwa/            # PWA-manifest och service worker
└── helpers/
    └── application_helper.rb

config/
├── locales/            # I18n-översättningsfiler (en.yml, sv.yml)
└── routes.rb          # Applikationsrutter
```

### Bidra

1. Forka repot
2. Skapa en feature branch
3. Gör dina ändringar
4. Kör tester och linting
5. Skicka en pull request

---

## License

This project is licensed under the MIT License - see the LICENSE file for details.

---

**Built with ❤️ using Rails 8, Tailwind CSS, and Hotwire**