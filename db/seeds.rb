# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#		both { and [ are necessary as shown above.
#   Mayor.create(:name => 'Daley', :city => cities.first)

#State.create([{:name=>'Alaska'},{:name=>'Alabama'}])

#State.create(:name=>'Alaska')
#State.create(:name=>'Alabama')

# delete records in case of errors and the seed file needs to be run again
State.delete_all
Country.delete_all
Industry.delete_all
Field.delete_all
AcademicFocusType.delete_all
College.delete_all
Department.delete_all
AcademicFocus.delete_all
Semester.delete_all
Language.delete_all
FinancialAssistanceOptionType.delete_all
ProviderContact.delete_all
Internship.delete_all
AcademicContact.delete_all
Provider.delete_all
ProviderType.delete_all

State.create([
	{:name=>'Alaska'},
	{:name=>'Alabama'},
	{:name=>'American Samoa'},
	{:name=>'Arizona'},
  {:name=>'Arkansas'},
  {:name=>'California'},
  {:name=>'Colorado'},
  {:name=>'Connecticut'},
  {:name=>'Delaware'},
  {:name=>'District of Columbia'},
  {:name=>'Florida'},
  {:name=>'Georgia'},
  {:name=>'Guam'},
  {:name=>'Hawaii'},
  {:name=>'Idaho'},
  {:name=>'Illinois'},
  {:name=>'Indian'},
  {:name=>'Iowa'},
  {:name=>'Kansas'},
  {:name=>'Kentucky'},
  {:name=>'Loiusiana'},
  {:name=>'Maine'},
  {:name=>'Maryland'},
  {:name=>'Massachusetts'},
  {:name=>'Michigan'},
  {:name=>'Minnesota'},
  {:name=>'Mississippi'},
  {:name=>'Missouri'},
  {:name=>'Montana'},
  {:name=>'Nebraska'},
  {:name=>'Nevada'},
  {:name=>'New Hampshire'},
  {:name=>'New Jersey'},
  {:name=>'New Mexico'},
  {:name=>'New York'},
  {:name=>'North Carolina'},
  {:name=>'North Dakota'},
  {:name=>'Northern Marianas Islands'},
  {:name=>'Ohio'},
  {:name=>'Oklahoma'},
  {:name=>'Oregon'},
  {:name=>'Pennsylvania'},
  {:name=>'Puerto Rico'},
  {:name=>'Rhode Island'},
  {:name=>'South Carolina'},
  {:name=>'South Dakota'},
  {:name=>'Tennessee'},
  {:name=>'Texas'},
  {:name=>'Utah'},
  {:name=>'Vermont'},
  {:name=>'Virginia'},
  {:name=>'Virgin Islands'},
  {:name=>'Washington'},
  {:name=>'West Virginia'},
  {:name=>'Wisconsin'},
  {:name=>'Wyoming'},
	{:name=>'unspecified'}
])

Country.create([
	{:name=>'Afghanistan', :un_code=>'AFG'},
	{:name=>'Aland Islands', :un_code=>'ALA'},
	{:name=>'Albania', :un_code=>'ALB'},
	{:name=>'Algeria', :un_code=>'DZA'},
	{:name=>'American Samoa', :un_code=>'ASM'},
	{:name=>'Andorra', :un_code=>'AND'},
	{:name=>'Angola', :un_code=>'AGO'},
	{:name=>'Anguilla', :un_code=>'AIA'},
	{:name=>'Antigua and Barbuda', :un_code=>'ATG'},
	{:name=>'Argentina', :un_code=>'ARG'},
	{:name=>'Armenia', :un_code=>'ARM'},
	{:name=>'Aruba', :un_code=>'ABW'},
	{:name=>'Australia', :un_code=>'AUS'},
	{:name=>'Austria', :un_code=>'AUT'},
	{:name=>'Azerbaijan', :un_code=>'AZE'},
	{:name=>'Bahamas', :un_code=>'BHS'},
	{:name=>'Bahrain', :un_code=>'BHR'},
	{:name=>'Bangladesh', :un_code=>'BGD'},
	{:name=>'Barbados ', :un_code=>'BRB'},
	{:name=>'Belarus', :un_code=>'BLR'},
	{:name=>'Belgium', :un_code=>'BEL'},
	{:name=>'Belize', :un_code=>'BLZ'},
	{:name=>'Benin', :un_code=>'BEN'},
	{:name=>'Bermuda', :un_code=>'BMU'},
	{:name=>'Bhutan', :un_code=>'BTN'},
	{:name=>'Bolivia', :un_code=>'BOL'},
	{:name=>'Bonaire, Saint Eustatius and Saba', :un_code=>'BES'},
	{:name=>'Bosnia and Herzegovina', :un_code=>'BIH'},
	{:name=>'Botswana', :un_code=>'BWA'},
	{:name=>'Brazil', :un_code=>'BRA'},
	{:name=>'British Virgin Islands', :un_code=>'VGB'},
	{:name=>'Brunei Darussalam', :un_code=>'BRN'},
	{:name=>'Bulgaria', :un_code=>'BGR'},
	{:name=>'Burkina Faso', :un_code=>'BFA'},
	{:name=>'Burundi', :un_code=>'BDI'},
	{:name=>'Cambodia', :un_code=>'KHM'},
	{:name=>'Cameroon', :un_code=>'CMR'},
	{:name=>'Canada', :un_code=>'CAN'},
	{:name=>'Cape Verde', :un_code=>'CPV'},
	{:name=>'Cayman Islands', :un_code=>'CYM'},
	{:name=>'Central African Republic', :un_code=>'CAF'},
	{:name=>'Chad', :un_code=>'TCD'},
	{:name=>'Chile', :un_code=>'CHL'},
	{:name=>'China', :un_code=>'CHN'},
	{:name=>'Hong Kong', :un_code=>'HKG'},
	{:name=>'Macao', :un_code=>'MAC'},
	{:name=>'Colombia', :un_code=>'COL'},
	{:name=>'Comoros', :un_code=>'COM'},
	{:name=>'Congo', :un_code=>'COG'},
	{:name=>'Cook Islands', :un_code=>'COK'},
	{:name=>'Costa Rica', :un_code=>'CRI'},
	{:name=>'Ivory Coast', :un_code=>'CIV'},
	{:name=>'Croatia', :un_code=>'HRV'},
	{:name=>'Cuba', :un_code=>'CUB'},
	{:name=>'Curacao', :un_code=>'CUW'},
	{:name=>'Cyprus', :un_code=>'CYP'},
	{:name=>'Czech Republic', :un_code=>'CZE'},
	{:name=>'People\'s Republic of Korea', :un_code=>'PRK'},
	{:name=>'Democratic Republic of the Congo', :un_code=>'COD'},
	{:name=>'Denmark', :un_code=>'DNK'},
	{:name=>'Djibouti', :un_code=>'DJI'},
	{:name=>'Dominica', :un_code=>'DMA'},
	{:name=>'Dominican Republic', :un_code=>'DOM'},
	{:name=>'Ecuador', :un_code=>'ECU'},
	{:name=>'Egypt', :un_code=>'EGY'},
	{:name=>'El Salvador', :un_code=>'SLV'},
	{:name=>'Equatorial Guinea', :un_code=>'GNQ'},
	{:name=>'Eritrea', :un_code=>'ERI'},
	{:name=>'Estonia', :un_code=>'EST'},
	{:name=>'Ethiopia', :un_code=>'ETH'},
	{:name=>'Faeroe Islands', :un_code=>'FRO'},
	{:name=>'Falkland Islands', :un_code=>'FLK'},
	{:name=>'Fiji', :un_code=>'FJI'},
	{:name=>'Finland', :un_code=>'FIN'},
	{:name=>'France', :un_code=>'FRA'},
	{:name=>'French Guiana', :un_code=>'GUF'},
	{:name=>'French Polynesia', :un_code=>'PYF'},
	{:name=>'Gabon', :un_code=>'GAB'},
	{:name=>'Gambia', :un_code=>'GMB'},
	{:name=>'Georgia', :un_code=>'GEO'},
	{:name=>'Germany', :un_code=>'DEU'},
	{:name=>'Ghana', :un_code=>'GHA'},
	{:name=>'Gibraltar', :un_code=>'GIB'},
	{:name=>'Greece', :un_code=>'GRC'},
	{:name=>'Greenland', :un_code=>'GRL'},
	{:name=>'Grenada', :un_code=>'GRD'},
	{:name=>'Guadeloupe', :un_code=>'GLP'},
	{:name=>'Guam', :un_code=>'GUM'},
	{:name=>'Guatemala', :un_code=>'GTM'},
	{:name=>'Guernsey', :un_code=>'GGY'},
	{:name=>'Guinea', :un_code=>'GIN'},
	{:name=>'Guinea-Bissau', :un_code=>'GNB'},
	{:name=>'Guyana', :un_code=>'GUY'},
	{:name=>'Haiti', :un_code=>'HTI'},
	{:name=>'Vatican', :un_code=>'VAT'},
	{:name=>'Honduras', :un_code=>'HND'},
	{:name=>'Hungary', :un_code=>'HUN'},
	{:name=>'Iceland', :un_code=>'ISL'},
	{:name=>'India', :un_code=>'IND'},
	{:name=>'Indonesia', :un_code=>'IDN'},
	{:name=>'Iran', :un_code=>'IRN'},
	{:name=>'Iraq', :un_code=>'IRQ'},
	{:name=>'Ireland', :un_code=>'IRL'},
	{:name=>'Isle of Man', :un_code=>'IMN'},
	{:name=>'Israel', :un_code=>'ISR'},
	{:name=>'Italy', :un_code=>'ITA'},
	{:name=>'Jamaica', :un_code=>'JAM'},
	{:name=>'Japan', :un_code=>'JPN'},
	{:name=>'Jersey', :un_code=>'JEY'},
	{:name=>'Jordan', :un_code=>'JOR'},
	{:name=>'Kazakhstan', :un_code=>'KAZ'},
	{:name=>'Kenya', :un_code=>'KEN'},
	{:name=>'Kiribati', :un_code=>'KIR'},
	{:name=>'Kuwait', :un_code=>'KWT'},
	{:name=>'Kyrgyzstan', :un_code=>'KGZ'},
	{:name=>'Laos', :un_code=>'LAO'},
	{:name=>'Latvia', :un_code=>'LVA'},
	{:name=>'Lebanon', :un_code=>'LBN'},
	{:name=>'Lesotho', :un_code=>'LSO'},
	{:name=>'Liberia', :un_code=>'LBR'},
	{:name=>'Libya', :un_code=>'LBY'},
	{:name=>'Liechtenstein', :un_code=>'LIE'},
	{:name=>'Lithuania', :un_code=>'LTU'},
	{:name=>'Luxembourg', :un_code=>'LUX'},
	{:name=>'Madagascar', :un_code=>'MDG'},
	{:name=>'Malawi', :un_code=>'MWI'},
	{:name=>'Malaysia', :un_code=>'MYS'},
	{:name=>'Maldives', :un_code=>'MDV'},
	{:name=>'Mali', :un_code=>'MLI'},
	{:name=>'Malta', :un_code=>'MLT'},
	{:name=>'Marshall Islands', :un_code=>'MHL'},
	{:name=>'Martinique', :un_code=>'MTQ'},
	{:name=>'Mauritania', :un_code=>'MRT'},
	{:name=>'Mauritius', :un_code=>'MUS'},
	{:name=>'Mayotte', :un_code=>'MYT'},
	{:name=>'Mexico', :un_code=>'MEX'},
	{:name=>'Micronesia', :un_code=>'FSM'},
	{:name=>'Monaco', :un_code=>'MCO'},
	{:name=>'Mongolia', :un_code=>'MNG'},
	{:name=>'Montenegro', :un_code=>'MNE'},
	{:name=>'Montserrat', :un_code=>'MSR'},
	{:name=>'Morocco', :un_code=>'MAR'},
	{:name=>'Mozambique', :un_code=>'MOZ'},
	{:name=>'Myanmar', :un_code=>'MMR'},
	{:name=>'Namibia', :un_code=>'NAM'},
	{:name=>'Nauru', :un_code=>'NRU'},
	{:name=>'Nepal', :un_code=>'NPL'},
	{:name=>'Netherlands', :un_code=>'NLD'},
	{:name=>'New Caledonia', :un_code=>'NCL'},
	{:name=>'New Zealand', :un_code=>'NZL'},
	{:name=>'Nicaragua', :un_code=>'NIC'},
	{:name=>'Niger', :un_code=>'NER'},
	{:name=>'Nigeria', :un_code=>'NGA'},
	{:name=>'Niue', :un_code=>'NIU'},
	{:name=>'Norfolk Island', :un_code=>'NFK'},
	{:name=>'Northern Mariana Islands', :un_code=>'MNP'},
	{:name=>'Norway', :un_code=>'NOR'},
	{:name=>'Occupied Palestinian Territory', :un_code=>'PSE'},
	{:name=>'Oman', :un_code=>'OMN'},
	{:name=>'Pakistan', :un_code=>'PAK'},
	{:name=>'Palau', :un_code=>'PLW'},
	{:name=>'Panama', :un_code=>'PAN'},
	{:name=>'Papua New Guinea', :un_code=>'PNG'},
	{:name=>'Paraguay', :un_code=>'PRY'},
	{:name=>'Peru', :un_code=>'PER'},
	{:name=>'Philippines', :un_code=>'PHL'},
	{:name=>'Pitcairn', :un_code=>'PCN'},
	{:name=>'Poland', :un_code=>'POL'},
	{:name=>'Portugal', :un_code=>'PRT'},
	{:name=>'Puerto Rico', :un_code=>'PRI'},
	{:name=>'Qatar', :un_code=>'QAT'},
	{:name=>'Republic of Korea', :un_code=>'KOR'},
	{:name=>'Republic of Moldova ', :un_code=>'MDA'},
	{:name=>'Reunion', :un_code=>'REU'},
	{:name=>'Romania', :un_code=>'ROU'},
	{:name=>'Russia', :un_code=>'RUS'},
	{:name=>'Rwanda', :un_code=>'RWA'},
	{:name=>'Saint-Barthelemy', :un_code=>'BLM'},
	{:name=>'Saint Helena', :un_code=>'SHN'},
	{:name=>'Saint Kitts and Nevis', :un_code=>'KNA'},
	{:name=>'Saint Lucia', :un_code=>'LCA'},
	{:name=>'Saint-Martin', :un_code=>'MAF'},
	{:name=>'Saint Pierre and Miquelon', :un_code=>'SPM'},
	{:name=>'Saint Vincent and the Grenadines', :un_code=>'VCT'},
	{:name=>'Samoa', :un_code=>'WSM'},
	{:name=>'San Marino', :un_code=>'SMR'},
	{:name=>'Sao Tome and Principe', :un_code=>'STP'},
	{:name=>'Saudi Arabia', :un_code=>'SAU'},
	{:name=>'Senegal', :un_code=>'SEN'},
	{:name=>'Serbia', :un_code=>'SRB'},
	{:name=>'Seychelles', :un_code=>'SYC'},
	{:name=>'Sierra Leone', :un_code=>'SLE'},
	{:name=>'Singapore', :un_code=>'SGP'},
	{:name=>'Sint Maarten', :un_code=>'SXM'},
	{:name=>'Slovakia', :un_code=>'SVK'},
	{:name=>'Slovenia', :un_code=>'SVN'},
	{:name=>'Solomon Islands', :un_code=>'SLB'},
	{:name=>'Somalia', :un_code=>'SOM'},
	{:name=>'South Africa', :un_code=>'ZAF'},
	{:name=>'Spain', :un_code=>'ESP'},
	{:name=>'Sri Lanka', :un_code=>'LKA'},
	{:name=>'Sudan', :un_code=>'SDN'},
	{:name=>'Suriname', :un_code=>'SUR'},
	{:name=>'Svalbard and Jan Mayen Islands', :un_code=>'SJM'},
	{:name=>'Swaziland', :un_code=>'SWZ'},
	{:name=>'Sweden', :un_code=>'SWE'},
	{:name=>'Switzerland', :un_code=>'CHE'},
	{:name=>'Syrian Arab Republic', :un_code=>'SYR'},
	{:name=>'Tajikistan', :un_code=>'TJK'},
	{:name=>'Thailand', :un_code=>'THA'},
	{:name=>'The former Yugoslav Republic of Macedonia', :un_code=>'MKD'},
	{:name=>'Timor-Leste', :un_code=>'TLS'},
	{:name=>'Togo', :un_code=>'TGO'},
	{:name=>'Tokelau', :un_code=>'TKL'},
	{:name=>'Tonga', :un_code=>'TON'},
	{:name=>'Trinidad and Tobago', :un_code=>'TTO'},
	{:name=>'Tunisia', :un_code=>'TUN'},
	{:name=>'Turkey', :un_code=>'TUR'},
	{:name=>'Turkmenistan', :un_code=>'TKM'},
	{:name=>'Turks and Caicos Islands', :un_code=>'TCA'},
	{:name=>'Tuvalu', :un_code=>'TUV'},
	{:name=>'Uganda', :un_code=>'UGA'},
	{:name=>'Ukraine', :un_code=>'UKR'},
	{:name=>'United Arab Emirates', :un_code=>'ARE'},
	{:name=>'United Kingdom of Great Britain and Northern Ireland', :un_code=>'GBR'},
	{:name=>'United Republic of Tanzania', :un_code=>'TZA'},
	{:name=>'United States of America', :un_code=>'USA'},
	{:name=>'United States Virgin Islands', :un_code=>'VIR'},
	{:name=>'Uruguay', :un_code=>'URY'},
	{:name=>'Uzbekistan', :un_code=>'UZB'},
	{:name=>'Vanuatu', :un_code=>'VUT'},
	{:name=>'Venezuela', :un_code=>'VEN'},
	{:name=>'Viet Nam', :un_code=>'VNM'},
	{:name=>'Wallis and Futuna Islands', :un_code=>'WLF'},
	{:name=>'Western Sahara', :un_code=>'ESH'},
	{:name=>'Yemen', :un_code=>'YEM'},
	{:name=>'Zambia', :un_code=>'ZMB'},
	{:name=>'Zimbabwe', :un_code=>'ZWE'},
	{:name=>'unspecified', :un_code=>'unspecified'}
])

Location.create([
    {:city => 'D.C.', 
     :state => State.where(:name => 'District of Columbia').first, 
     :country => Country.where(:un_code => 'USA').first 
    }
])

Language.create([
	{:name=>'English'},
	{:name=>'Spanish'},
	{:name=>'Portugese'},
	{:name=>'Italian'},
	{:name=>'French'},
	{:name=>'Romanian'},
	{:name=>'Russian'},
	{:name=>'Japanese'},
	{:name=>'Korean'},
	{:name=>'Chinese'},
	{:name=>'German'},
	{:name=>'Arabic'},
	{:name=>'unspecified'}
])


list = AcademicFocusType.create([{:name=>'Major'},{:name=>'Minor'},{:name=>'unspecified'}])
major = list[0]
minor = list[1]
unspecifiedAFT = list[2]

College.create([
	{:name=>'Humanities'},
	{:name=>'Family, Home and Social Sciences'},
	{:name=>'Marriott School'},
	{:name=>'Continuing Education'},
	{:name=>'McKay School of Education'},
	{:name=>'Fulton College of Engineering and Technology'},
	{:name=>'Fine Arts and Communications'},
	{:name=>'Graduate Studies'},
	{:name=>'Independent Study'},
	{:name=>'International Studies (Kennedy Center)'},
	{:name=>'Law School'},
	{:name=>'Life Sciences'},
	{:name=>'Nursing'},
	{:name=>'Physical and Mathematical Sciences'},
	{:name=>'Religious Education'},
	{:name=>'Undergraduate Education'},
	{:name=>'unspecified'}
])
humanities = College.where(:name=>'Humanities').first
kennedy = College.where(:name=>'International Studies (Kennedy Center)').first
unspecifiedC = College.where(:name => 'unspecified').first

Department.create([
	{:name=>'American Studies', :college => humanities},
	{:name=>'Asian and Near Eastern Languages', :college => humanities},
	{:name=>'English', :college => humanities},
	{:name=>'French and Italian', :college => humanities},
	{:name=>'Germanic and Slavic Languages', :college => humanities},
	{:name=>'Humanities, Classics, and Comparative Literature', :college => humanities},
	{:name=>'Humanities Computing', :college => humanities},
	{:name=>'Linguistics and English Language', :college => humanities},
	{:name=>'Philosophy', :college => humanities},
	{:name=>'Spanish and Portuguese', :college => humanities},
	{:name=>'unspecified', :college => unspecifiedC }
])
american_studies = Department.where(:name=>'American Studies').first
asian = Department.where(:name=>'Asian and Near Eastern Languages').first
english = Department.where(:name=>'English').first
french = Department.where(:name=>'French and Italian').first
german = Department.where(:name=>'Germanic and Slavic Languages').first
classics = Department.where(:name=>'Humanities, Classics, and Comparative Literature').first
chum = Department.where(:name=>'Humanities Computing').first
linguistics = Department.where(:name=>'Linguistics and English Language').first
philosophy = Department.where(:name=>'Philosophy').first
spanish = Department.where(:name=>'Spanish and Portuguese').first
unspecified = Department.where(:name => 'unspecified').first

AcademicFocus.create([
	{:name=>'American Studies', :academic_focus_type => major, :department => american_studies}, 
	{:name=>'Western American Studies', :academic_focus_type => minor, :department => american_studies},
	{:name=>'Chinese', :academic_focus_type => major, :department => asian},
	{:name=>'Japanese', :academic_focus_type => major, :department => asian},
	{:name=>'Korean', :academic_focus_type => major, :department => asian},
	{:name=>'Arabic', :academic_focus_type => minor, :department => asian},
	{:name=>'Chinese, Chinese Teaching', :academic_focus_type => minor, :department => asian},
	{:name=>'Hebrew', :academic_focus_type => minor, :department => asian},
	{:name=>'Japanese, Japanese Teaching', :academic_focus_type => minor, :department => asian},
	{:name=>'Korean', :academic_focus_type => minor, :department => asian},
	{:name=>'English', :academic_focus_type => major, :department => english},
	{:name=>'English Teaching', :academic_focus_type => major, :department => english},
	{:name=>'English', :academic_focus_type => minor, :department => english},
	{:name=>'English Teaching', :academic_focus_type => minor, :department => english},
	{:name=>'French Studies', :academic_focus_type => major, :department => french},
	{:name=>'French Teaching', :academic_focus_type => major, :department => french},
	{:name=>'Italian', :academic_focus_type => major, :department => french},
	{:name=>'French', :academic_focus_type => minor, :department => french},
	{:name=>'French Teaching', :academic_focus_type => minor, :department => french},
	{:name=>'Italian', :academic_focus_type => minor, :department => french},
	{:name=>'German Linguistics', :academic_focus_type => major, :department => german},
	{:name=>'German Literature', :academic_focus_type => major, :department => german},
	{:name=>'German Teaching', :academic_focus_type => major, :department => german},
	{:name=>'Russian', :academic_focus_type => major, :department => german},
	{:name=>'German', :academic_focus_type => minor, :department => german},
	{:name=>'German Teaching', :academic_focus_type => minor, :department => german},
	{:name=>'Russian', :academic_focus_type => minor, :department => german},
	{:name=>'Russian Teaching', :academic_focus_type => minor, :department => german},
	{:name=>'Classical Studies - Classics', :academic_focus_type => major, :department => classics},
	{:name=>'Classical Studies - Classical Civilization', :academic_focus_type => major, :department => classics},
	{:name=>'Classical Studies - Greek Emphasis', :academic_focus_type => major, :department => classics},
	{:name=>'Classical Studies - Latin Emphasis', :academic_focus_type => major, :department => classics},
	{:name=>'Comparative Literature', :academic_focus_type => major, :department => classics},
	{:name=>'Humanities', :academic_focus_type => major, :department => classics},
	{:name=>'Latin Teaching', :academic_focus_type => major, :department => classics},
	{:name=>'Classical Studies - Greek', :academic_focus_type => minor, :department => classics},
	{:name=>'Classical Studies - Latin', :academic_focus_type => minor, :department => classics},
	{:name=>'Humanities', :academic_focus_type => minor, :department => classics},
	{:name=>'Latin Teaching', :academic_focus_type => minor, :department => classics},
	{:name=>'Scandanavian Studies', :academic_focus_type => minor, :department => classics},
	{:name=>'Humanities Computing', :academic_focus_type => minor, :department => chum},
	{:name=>'English Language', :academic_focus_type => major, :department => linguistics},
	{:name=>'Linguistics', :academic_focus_type => major, :department => linguistics},
	{:name=>'Linguistics', :academic_focus_type => minor, :department => linguistics},
	{:name=>'Linguistics Computing', :academic_focus_type => minor, :department => linguistics},
	{:name=>'TESOL', :academic_focus_type => minor, :department => linguistics},
	{:name=>'Editing', :academic_focus_type => minor, :department => linguistics},
	{:name=>'Philosophy', :academic_focus_type => major, :department => philosophy},
	{:name=>'Philosophy', :academic_focus_type => minor, :department => philosophy},
	{:name=>'Logic', :academic_focus_type => minor, :department => philosophy},
	{:name=>'Spanish', :academic_focus_type => major, :department => spanish},
	{:name=>'Spanish Teaching', :academic_focus_type => major, :department => spanish},
	{:name=>'Spanish Translation', :academic_focus_type => major, :department => spanish},
	{:name=>'Portuguese', :academic_focus_type => major, :department => spanish},
	{:name=>'Spanish', :academic_focus_type => minor, :department => spanish},
	{:name=>'Spanish Teaching', :academic_focus_type => minor, :department => spanish},
	{:name=>'Portuguese', :academic_focus_type => minor, :department => spanish},
	{:name=>'Portuguese Teaching', :academic_focus_type => minor, :department => spanish},
	{:name=>'unspecified', :department => unspecified, :academic_focus_type => unspecifiedAFT }
])

AcademicContact.create([
	{:name=>'Dana Bourgerie', :office_location=>'3069 JFSB', :phone=>'422-4952', :email=>'dana_bourgerie@byu.edu', :department=> asian},
	{:name=>'Phillip Snyder', :office_location=>'4179 JFSB', :phone=>'422-2487', :email=>'phillip_snyder@byu.edu', :department=> english},
	{:name=>'Yvon Le Bras', :office_location=>'3139 JFSB', :phone=>'422-2288', :email=>'yvon_lebras@byu.edu', :department=> french},
	{:name=>'Cinzia Noble', :office_location=>'3139 JFSB', :phone=>'422-3389', :email=>'cinzia.noble@gmail.com', :department=> french},
	{:name=>'Grant Lundberg', :office_location=>'3092 JFSB', :phone=>'422-2615', :email=>'grant_lundberg@byu.edu', :department=> german},
	{:name=>'Rob McFarland', :office_location=>'3104 JFSB', :phone=>'422-8331', :email=>'robmc@byu.edu', :department=> german},
	{:name=>'Masakazu Watabe', :office_location=>'3077 JFSB', :phone=>'422-2945', :email=>'masakazu_watabe@byu.edu', :department=> asian},
	{:name=>'Charlotte Stanford', :office_location=>'3047 JFSB', :phone=>'422-4604', :email=>'charlotte_stanford@byu.edu', :department=> classics},
	{:name=>'Jill Rudy', :office_location=>'4157 JFSB', :phone=>'422-2869', :email=>'jill_rudy@byu.edu', :department=> american_studies},
	{:name=>'Janis Nuckolls', :office_location=>'4655 JFSB', :phone=>'422-', :email=>'janis_nuckolls@byu.edu', :department=> linguistics},
	{:name=>'Doris Dant', :office_location=>'4069 JFSB', :phone=>'422-4707', :email=>'drdant@gmail.com', :department=> linguistics},
	{:name=>'TBD', :office_location=>'undetermined JFSB', :phone=>'422-xxxx', :email=>'null', :department=> chum},
	{:name=>'Alan Melby', :office_location=>'4051 JFSB', :phone=>'422-2144', :email=>'akmttt@byu.edu', :department=> linguistics},
	{:name=>'Daniel W. Graham', :office_location=>'4086 JFSB', :phone=>'422-2223', :email=>'daniel_graham@byu.edu', :department=> philosophy},
	{:name=>'Tony Brown', :office_location=>'3093 JFSB', :phone=>'422-7012', :email=>'tony_brown@byu.edu', :department=> german},
	{:name=>'Rob Smead', :office_location=>'3153 JFSB', :phone=>'422-2636', :email=>'rob_smead@byu.edu', :department=> spanish},
	{:name=>'Christopher Oscarson', :office_location=>'3033 JFSB', :phone=>'422-9037', :email=>'christopher_oscarson@byu.edu', :department=> classics},
	{:name=>'Washington Seminar Office', :office_location=>'944 SWKT', :phone=>'422-6029', :email=>'washingtonseminar@byu.edu', :department => unspecified},
	{:name=>'unspecified', :department => unspecified}
])

# should provider contact have an office location?
ProviderContact.create([
	{:name=>'Washington Seminar', :email=>'washingtonseminar@byu.edu', :phone=>'801-422-6029', :can_call=> true },
	{:name=>'unspecified'}
])

Semester.create([{:name=>'Fall'},{:name=>'Winter'},{:name=>'Spring/Summer'},{:name=>'unspecified'}])

FinancialAssistanceOptionType.create([
	{:name=>'Grant'},
	{:name=>'Scholarship'},
	{:name=>'Fellowship'},
	{:name=>'Program Discount'},
	{:name=>'Loan'},
	{:name=>'unspecified'}
])

Industry.create(:name=>'Medical')
Industry.create([
	{:name=>'Business'},
	{:name=>'Government'},
	{:name=>'Education'},
	{:name=>'Other'},
	{:name=>'Law'},
	{:name=>'Language'},
	{:name=>'Technology'},
	{:name=>'Writing'},
	{:name=>'Entertainment'},
	{:name=>'Library Science'},
	{:name=>'Museum'},
	{:name=>'Social Science'},
	{:name=>'Non-Profit'},
	{:name=>'Tourism and Travel'},
	{:name=>'Recreational Management'},
	{:name=>'unspecified'}
])
medical = Industry.where(:name=>'Medical').first
gov = Industry.where(:name=>'Government').first
business = Industry.where(:name=>'Business').first
education = Industry.where(:name=>'Education').first
other = Industry.where(:name=>'Other').first
law = Industry.where(:name=>'Law').first
lang = Industry.where(:name=>'Language').first
tech = Industry.where(:name=>'Technology').first
writ = Industry.where(:name=>'Writing').first
ent = Industry.where(:name=>'Entertainment').first
lib = Industry.where(:name=>'Library Science').first
museum = Industry.where(:name=>'Museum').first
socsci = Industry.where(:name=>'Social Science').first
npo = Industry.where(:name=>'Non-Profit').first
tourism = Industry.where(:name=>'Tourism and Travel').first
rec = Industry.where(:name=>'Recreational Management').first  
unspecifiedIN = Industry.where(:name => 'unspecified').first



Field.create([
  {:name=>'Chiropractic', :industry => medical},
  {:name=>'Pediatric', :industry => medical},
  {:name=>'Physicians Assistant', :industry => medical},
  {:name=>'Administration', :industry => medical},
  {:name=>'Pharmacology', :industry => medical},
  {:name=>'Nursing', :industry => medical},
  {:name=>'Geriatric', :industry => medical},
  {:name=>'Dentist', :industry => medical},
  {:name=>'Podiatry', :industry => medical},
  
  {:name=>'Accounting', :industry => business},
  {:name=>'Finance', :industry => business},
  {:name=>'Administration', :industry => business},
  {:name=>'Human Resources', :industry => business},
  {:name=>'Management', :industry => business},
  {:name=>'Entrenpreneur', :industry => business},
  {:name=>'Sales', :industry => business},
  {:name=>'Consulting', :industry => business},
  {:name=>'Operations', :industry => business},
  {:name=>'Retail', :industry => business},
  {:name=>'Statistical Analysis', :industry => business},
  {:name=>'Marketing', :industry => business},
  {:name=>'Customer Service', :industry => business},
  
  {:name=>'Armed Forces', :industry => gov},
  {:name=>'Law Enforcement', :industry => gov},
  {:name=>'Federal Government', :industry => gov},
  {:name=>'State Government', :industry => gov},
  {:name=>'Local Government', :industry => gov},
  {:name=>'International', :industry => gov},
  
  {:name=>'Preschool/Childcare', :industry => education},
  {:name=>'K-12', :industry => education},
  {:name=>'Higher Education', :industry => education},
  {:name=>'Research', :industry => education},
  {:name=>'Grad School', :industry => education},
  {:name=>'Med School', :industry => education},
  
  {:name=>'Attorney', :industry => law},
  {:name=>'Judiciary', :industry => law},
  {:name=>'Paralegal', :industry => law},
  
  {:name=>'Translation', :industry => lang},
  {:name=>'Interpretation', :industry => lang},
  {:name=>'TESOL', :industry => lang},
  {:name=>'Language Teaching', :industry => lang},
  
  {:name=>'Writing', :industry => writ},
  {:name=>'Editing', :industry => writ},
  {:name=>'Technical Writing', :industry => writ},
  {:name=>'Publishing', :industry => writ},
  
  {:name=>'Web Design', :industry => tech},
  {:name=>'Web Publishing', :industry => tech},
  {:name=>'Social Media', :industry => tech},
  {:name=>'IT', :industry => tech},
  {:name=>'Application/Platform Development', :industry => tech},
  {:name=>'Statistical Analysis', :industry => tech},
  {:name=>'Programming', :industry => tech},
  
  {:name=>'Stay-at-Home Parent', :industry => other},
  
  {:name=>'Film', :industry => ent},
  {:name=>'Directing', :industry => ent},
  {:name=>'Screenwriting', :industry => ent},
  {:name=>'Music', :industry => ent},
  {:name=>'Talent Search', :industry => ent},
  {:name=>'Advertising', :industry => ent},
  {:name=>'Sports', :industry => ent},
  {:name=>'Dance', :industry => ent},
  {:name=>'Broadcasting', :industry => ent},
  
  {:name=>'Library', :industry => lib},
  {:name=>'Book Binding', :industry => lib},
  {:name=>'Restoration and Preservation', :industry => lib},

  {:name=>'Curatorial', :industry => museum},
  {:name=>'Art History', :industry => museum},
  {:name=>'Restoration and Preservation', :industry => museum},
  {:name=>'Exhibits', :industry => museum},
  
  {:name=>'Psychology', :industry => socsci},
  {:name=>'History', :industry => socsci},
  {:name=>'Political Science', :industry => socsci},
  {:name=>'Econ', :industry => socsci},
  {:name=>'Sociology', :industry => socsci},
  {:name=>'Counseling', :industry => socsci},

  {:name=>'Development', :industry => npo},
  {:name=>'Health', :industry => npo},
  {:name=>'Micro-Credit', :industry => npo},
  {:name=>'Employment Services', :industry => npo},

  {:name=>'Hospitality', :industry => tourism},
  {:name=>'Travel', :industry => tourism},
  {:name=>'Tourism', :industry => tourism},

  {:name=>'Youth', :industry => rec},
  {:name=>'Wellness', :industry => rec},

  {:name=>'unspecified', :industry => unspecifiedIN}
])

ProviderType.create([{:name => 'unspecified'}])

Provider.create([
   {
     :name => 'unspecified', :provider_type => ProviderType.where(:name => 'unspecified').first
    }
])

Internship.create([
  {
    :name => 'Washington Seminar Internships',
    :provider => Provider.where(:name=>'unspecified').first,
    :is_paid => false,
    :is_full_time => true,
    :is_part_time => true,
    :stipend => 'variable stipends by provider, housing at the Barlow Center' ,
    :description => '
      Few experiences are as profitable as the training you will receive on BYU\'s Washington Seminar. Through a quality internship in Washington, D.C., briefings on current national issues, tours, and excursions, you will gain a valuable supplement to your education and the chance to be better prepared for your career.
      For two decades the Washington Seminar has provided students from every academic discipline the opportunity to encounter the culture and excitement of the nation\'s capital while gaining important professional experience. Alumni of the seminar consider it one of the most significant aspects of their university training. ',
    :qualifications => 'Variable depending on specific internship.',
    :qualifications_academic => '
      - You must be a currently enrolled BYU student who has completed (or will have completed during the semester of the application deadline) at least one semester of course work at BYU.
      - You must have at least 60 graded credits on your transcript at the time of application, including current enrollment at BYU and transfer credit from other universities or colleges but excluding Advanced Placement credits.
      - You must have a cumulative 3.0 grade point average.
      - You must be enrolled as a BYU student carrying the minimum required 6 credit hours during the semester or term you will be on the Washington Seminar.',
    :for_credit => true,
    :requires_us_citizenship => true,
    :academic_contact => AcademicContact.where(:name => 'Washington Seminar Office').first,
    :provider_contact => ProviderContact.where(:name => 'Washington Seminar').first,
    :application_process => 'Go to http://washingtonseminar.byu.edu/ProspectiveStudents/appInstructions.aspx and follow the instructions. All applications for Washington Seminar internships are handled by the Washington Seminar Office',
    :deadline => '   
      Winter Semester: October 1st
      Spring/Summer Semester: November 1st
      Fall Semester: February 1st',
    :notes => 'You must search for internships and apply through the Washington Seminar Program. More info can be found at their website or in their office.',
    :semesters => [
    Semester.where(:name => 'Winter').first,
    Semester.where(:name => 'Fall').first,
    Semester.where(:name => 'Spring/Summer').first],
    :financial_assistance_options => [],
    :locations => [Location.where(:city => 'D.C.').first,],
    :languages => [Language.where(:name => 'English').first],
    :fields => [
      Field.where(:name => 'Federal Government').first,
      Field.where(:name => 'Writing').first],
      :academic_focuses => [AcademicFocus.where(:name => 'Editing', :academic_focus_type_id => minor).first]
  }
])

