CREATE TABLE favorability_polls_2019 (
	question_id SERIAL PRIMARY KEY,
	start_date DATE,
	end_date DATE,
	pollster_id TEXT,
	pollster TEXT,
	sponsors TEXT,
	sample_size NUMERIC,
	population TEXT,
	methodology TEXT,
	url TEXT,
	politician TEXT,
	favorable NUMERIC,
	unfavorable NUMERIC,
	very_favorable NUMERIC,
	somewhat_favorable NUMERIC,
	somewhat_unfavorable NUMERIC,
	very_unfavorable NUMERIC		
);

CREATE TABLE trump_v_biden_2019 (
	question_id SERIAL PRIMARY KEY,
	end_date DATE,
	pollster TEXT,
	sample_size NUMERIC,
	population TEXT,
	politician TEXT,
	favorable NUMERIC,
	unfavorable NUMERIC,
	very_favorable NUMERIC,
	somewhat_favorable NUMERIC,
	somewhat_unfavorable NUMERIC,
	very_unfavorable NUMERIC,
	results INTEGER,
		FOREIGN KEY (question_id) REFERENCES favorability_polls_2019 (question_id)
);

CREATE TABLE favorability_polls_2023 (
	poll_id TEXT,
	pollster_id TEXT,
	pollster TEXT,
	sponsors_ids TEXT,
	sponsors TEXT,
	display_name TEXT,
	pollster_rating_id NUMERIC,
	pollster_rating_name TEXT,
	fte_grade TEXT,
	methodology TEXT,
	state TEXT,
	start_date DATE,
	end_date DATE,
	sponsor_candidate_id TEXT,
	sponsor_candidate TEXT,
	sponsor_candidate_party TEXT,
	question_id SERIAL PRIMARY KEY,
	sample_size NUMERIC,
	population TEXT,
	subpopulation TEXT,
	pupulation_full TEXT,
	tracking TEXT,
	created_at TEXT,
	notes TEXT,
	url TEXT,
	source TEXT,
	internal TEXT,
	partisan TEXT,
	imputated_sample_size NUMERIC,
	politician_id TEXT,
	politician TEXT,
	favorable NUMERIC,
	unfavorable NUMERIC,
	alternate_answers NUMERIC,
	very_favorable NUMERIC,
	somewhat_favorable NUMERIC,
	somewhat_unfavorable NUMERIC,
	very_unfavorable NUMERIC		
);

CREATE TABLE trump_v_biden_2023 (
	question_id SERIAL PRIMARY KEY,
	end_date DATE,
	pollster TEXT,
	sample_size NUMERIC,
	population TEXT,
	politician TEXT,
	favorable NUMERIC,
	unfavorable NUMERIC,
	very_favorable NUMERIC,
	somewhat_favorable NUMERIC,
	somewhat_unfavorable NUMERIC,
	very_unfavorable NUMERIC,
	results INTEGER,
		FOREIGN KEY (question_id) REFERENCES favorability_polls_2023 (question_id)
);