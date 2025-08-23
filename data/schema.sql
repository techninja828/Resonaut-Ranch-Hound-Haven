-- Core operational schema (PostgreSQL-compatible; adapt as needed)
CREATE TABLE animals (
  animal_id UUID PRIMARY KEY,
  name TEXT,
  intake_date DATE NOT NULL,
  sex TEXT CHECK (sex IN ('M','F')),
  age_years NUMERIC(4,2),
  breed TEXT,
  source TEXT,         -- shelter, owner surrender, stray, transfer
  status TEXT,         -- intake, rehab, foster, adoptable, adopted, sanctuary, deceased
  sanctuary_flag BOOLEAN DEFAULT FALSE
);

CREATE TABLE medical_events (
  med_id UUID PRIMARY KEY,
  animal_id UUID REFERENCES animals(animal_id),
  event_date DATE NOT NULL,
  type TEXT,           -- vax, spay_neuter, surgery, meds
  notes TEXT,
  cost_cents INT
);

CREATE TABLE behavior_plans (
  plan_id UUID PRIMARY KEY,
  animal_id UUID REFERENCES animals(animal_id),
  created_at TIMESTAMP NOT NULL,
  issue TEXT,          -- reactivity, resource guarding, etc.
  protocol TEXT,       -- textual plan link/ref
  handler_level INT CHECK (handler_level BETWEEN 1 AND 3)
);

CREATE TABLE behavior_sessions (
  session_id UUID PRIMARY KEY,
  animal_id UUID REFERENCES animals(animal_id),
  session_ts TIMESTAMP NOT NULL,
  duration_min INT,
  exercise TEXT,
  success_score INT CHECK (success_score BETWEEN 1 AND 5),
  notes TEXT
);

CREATE TABLE fosters (
  foster_id UUID PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT,
  phone TEXT,
  city TEXT,
  active BOOLEAN DEFAULT TRUE,
  start_date DATE
);

CREATE TABLE foster_placements (
  placement_id UUID PRIMARY KEY,
  animal_id UUID REFERENCES animals(animal_id),
  foster_id UUID REFERENCES fosters(foster_id),
  start_date DATE,
  end_date DATE
);

CREATE TABLE adopters (
  adopter_id UUID PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT,
  phone TEXT,
  city TEXT,
  approved BOOLEAN DEFAULT FALSE
);

CREATE TABLE adoptions (
  adoption_id UUID PRIMARY KEY,
  animal_id UUID REFERENCES animals(animal_id),
  adopter_id UUID REFERENCES adopters(adopter_id),
  adoption_date DATE,
  return_date DATE
);

CREATE TABLE donations (
  donation_id UUID PRIMARY KEY,
  donor_name TEXT,
  donor_email TEXT,
  amount_cents INT NOT NULL,
  donation_date DATE NOT NULL,
  campaign TEXT
);

CREATE TABLE content_posts (
  post_id UUID PRIMARY KEY,
  platform TEXT,       -- tiktok, youtube, instagram, etc
  posted_ts TIMESTAMP,
  url TEXT,
  title TEXT,
  views INT,
  likes INT,
  shares INT,
  utm_campaign TEXT
);
