CREATE TABLE access_token (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	token_value VARCHAR(4096),
	expiration TIMESTAMP NULL,
	token_type VARCHAR(256),
	refresh_token_id BIGINT,
	client_id VARCHAR(256),
	auth_holder_id BIGINT,
	id_token_id BIGINT
);

CREATE TABLE address (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	formatted VARCHAR(256),
	street_address VARCHAR(256),
	locality VARCHAR(256),
	region VARCHAR(256),
	postal_code VARCHAR(256),
	country VARCHAR(256)
);

CREATE TABLE approved_site (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	user_id VARCHAR(4096),
	client_id VARCHAR(4096),
	creation_date TIMESTAMP NULL,
	access_date TIMESTAMP NULL,
	timeout_date TIMESTAMP NULL,
	whitelisted_site_id VARCHAR(256)
);

CREATE TABLE approved_site_scope (
	owner_id BIGINT,
	scope VARCHAR(256)
);

CREATE TABLE authentication_holder (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	owner_id BIGINT,
	authentication LONGBLOB
);

CREATE TABLE authority (
	owner_id BIGINT,
	authority LONGBLOB
);

CREATE TABLE authorization_code (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	code VARCHAR(256),
	authorization_request_holder LONGBLOB
);

CREATE TABLE authorized_grant_type (
	owner_id BIGINT,
	authorized_grant_type VARCHAR(2000)
);

CREATE TABLE blacklisted_site (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	uri VARCHAR(2048)
);

CREATE TABLE client_details (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	client_description VARCHAR(256),
	allow_multiple_access_tokens BOOLEAN NOT NULL DEFAULT 0,
	reuse_refresh_tokens BOOLEAN NOT NULL DEFAULT 1,
	dynamically_registered BOOLEAN NOT NULL DEFAULT 0,
	allow_introspection BOOLEAN NOT NULL DEFAULT 0,
	id_token_validity_seconds BIGINT,
	
	client_id VARCHAR(256),
	client_secret VARCHAR(2048),
	access_token_validity_seconds BIGINT,
	refresh_token_validity_seconds BIGINT,
	
	application_type VARCHAR(256),
	client_name VARCHAR(256),
	token_endpoint_auth_method VARCHAR(256),
	subject_type VARCHAR(256),
	
	logo_url VARCHAR(2048),
	policy_url VARCHAR(2048),
	client_url VARCHAR(2048),
	tos_url VARCHAR(2048),

	jwk_url VARCHAR(2048),
	jwk_encryption_url VARCHAR(2048),
	x509_url VARCHAR(2048),
	x509_encryption_url VARCHAR(2048),
	sector_identifier_url VARCHAR(2048),
	
	requre_signed_request_object VARCHAR(256),
	
	user_info_signed_response_alg VARCHAR(256),
	user_info_encrypted_response_alg VARCHAR(256),
	user_info_encrypted_response_enc VARCHAR(256),
	user_info_encrypted_response_int VARCHAR(256),
	
	id_token_signed_response_alg VARCHAR(256),
	id_token_encrypted_response_alg VARCHAR(256),
	id_token_encrypted_response_enc VARCHAR(256),
	id_token_encrypted_response_int VARCHAR(256),
	
	default_max_age BIGINT,
	require_auth_time BOOLEAN NOT NULL DEFAULT 0,
	default_acr VARCHAR(256)
);

CREATE TABLE client_nonce ( 
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	value VARCHAR(256),
	client_id VARCHAR(256),
	use_date DATE,
	expire_date DATE
);

CREATE TABLE contact (
	owner_id BIGINT,
	contact VARCHAR(256)
);

CREATE TABLE event (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	type INT(3),
	timestamp DATE
);

CREATE TABLE redirect_uri (
	owner_id BIGINT, 
	redirect_uri VARCHAR(2048) 
);

CREATE TABLE refresh_token (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	token_value VARCHAR(4096),
	expiration TIMESTAMP NULL,
	auth_holder_id BIGINT,
	client_id VARCHAR(256)
);

CREATE TABLE resource_id (
	owner_id BIGINT, 
	resource_id VARCHAR(256) 
);

CREATE TABLE client_scope (
	owner_id BIGINT,
	scope VARCHAR(2048)
);

CREATE TABLE token_scope (
	owner_id BIGINT,
	scope VARCHAR(2048)
);

CREATE TABLE system_scope (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	scope VARCHAR(1024),
	description VARCHAR(4096),
	icon VARCHAR(256),
	allow_dyn_reg BOOLEAN NOT NULL DEFAULT 0,
	default_scope BOOLEAN NOT NULL DEFAULT 0
);

CREATE TABLE user_info (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	sub VARCHAR(256),
	preferred_username VARCHAR(256),
	name VARCHAR(256),
	given_name VARCHAR(256),
	family_name VARCHAR(256),
	middle_name VARCHAR(256),
	nickname VARCHAR(256),
	profile VARCHAR(256),
	picture VARCHAR(256),
	website VARCHAR(256),
	email VARCHAR(256),
	email_verified BOOLEAN,
	gender VARCHAR(256),
	zone_info VARCHAR(256),
	locale VARCHAR(256),
	phone_number VARCHAR(256),
	address_id VARCHAR(256),
	updated_time VARCHAR(256),
	birthdate VARCHAR(256)
);

CREATE TABLE whitelisted_site (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	creator_user_id VARCHAR(256),
	client_id VARCHAR(256)
);

CREATE TABLE whitelisted_site_scope (
	owner_id BIGINT,
	scope VARCHAR(256)
);
