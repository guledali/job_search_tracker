class JobsController < ApplicationController
  def index
    # Hardcoded job data for now
    @jobs = [
      {
        id: 1,
        title: "Senior Frontend-utvecklare",
        company: "TechCorp Solutions",
        location: "Stockholm, Sverige",
        source: "LinkedIn",
        status: "applied",
        date_applied: "2025-01-08",
        salary: "600.000 - 800.000 kr",
        description: "Vi söker en erfaren frontend-utvecklare som vill gå med i vårt växande team och hjälpa till att bygga fantastiska användarupplevelser.",
        logo: "https://via.placeholder.com/48x48/3B82F6/FFFFFF?text=TC"
      },
      {
        id: 2,
        title: "Full Stack-ingenjör",
        company: "StartupXYZ",
        location: "Fjärr",
        source: "Indeed",
        status: "interviewing",
        date_applied: "2025-01-05",
        salary: "500.000 - 700.000 kr",
        description: "Gå med i vårt snabbväxande startup och arbeta med banbrytande webbapplikationer med moderna teknologier.",
        logo: "https://via.placeholder.com/48x48/10B981/FFFFFF?text=SX"
      },
      {
        id: 3,
        title: "React-utvecklare",
        company: "Digital Agency Co",
        location: "Göteborg, Sverige",
        source: "LinkedIn",
        status: "applied",
        date_applied: "2025-01-03",
        salary: "450.000 - 600.000 kr",
        description: "Vi söker en talangfull React-utvecklare som hjälper oss att skapa vackra, responsiva webbapplikationer för våra kunder.",
        logo: "https://via.placeholder.com/48x48/8B5CF6/FFFFFF?text=DA"
      },
      {
        id: 4,
        title: "UI/UX Frontend-utvecklare",
        company: "DesignFirst",
        location: "Malmö, Sverige",
        source: "Indeed",
        status: "waiting",
        date_applied: "2025-01-01",
        salary: "425.000 - 575.000 kr",
        description: "Perfekt roll för någon som älskar både design och kod. Hjälp oss att skapa fantastiska användargränssnitt.",
        logo: "https://via.placeholder.com/48x48/F59E0B/FFFFFF?text=DF"
      }
    ]
  end

  def new
    @job = {
      title: "",
      company: "",
      location: "",
      source: "",
      status: "waiting",
      date_applied: Date.current.strftime("%Y-%m-%d"),
      salary_min: "",
      salary_max: "",
      salary_type: "yearly",
      description: "",
      job_url: "",
      notes: ""
    }
  end

  def create
    # Mock creation - just redirect back to index with success
    redirect_to jobs_path, notice: t("job_applications.create_success")
  end
end
