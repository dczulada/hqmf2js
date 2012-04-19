hQuery.Patient.prototype.procedureResults = -> this.results().concat(this.vital_signs()).concat(this.procedures())
hQuery.Patient.prototype.laboratoryTests = -> this.results().concat(this.vitalSigns())
hQuery.Patient.prototype.allMedications = -> this.medications().concat(this.immunizations())
hQuery.Patient.prototype.allProblems = -> this.conditions().concat(this.socialHistories())
hQuery.Patient.prototype.allDevices = -> this.conditions().concat(this.procedures()).concat(this.careGoals()).concat(this.medicalEquipment())
hQuery.Patient.prototype.activeDiagnosis = -> this.conditions().concat(this.socialHistories()).withStatuses(['active'])
hQuery.Patient.prototype.inactiveDiagnosis = -> this.conditions().concat(this.socialHistories()).withStatuses(['inactive'])
hQuery.Patient.prototype.resolvedDiagnosis = -> this.conditions().concat(this.socialHistories()).withStatuses(['resolved'])

