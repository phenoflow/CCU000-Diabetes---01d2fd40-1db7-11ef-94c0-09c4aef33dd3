cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ccu000-diabetes-pregnancy---secondary:
    run: ccu000-diabetes-pregnancy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  ccu000-diabetes-mother---secondary:
    run: ccu000-diabetes-mother---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-pregnancy---secondary/output
  ccu000-diabetes-cataract---secondary:
    run: ccu000-diabetes-cataract---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-mother---secondary/output
  dependent-ccu000-diabetes---secondary:
    run: dependent-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-cataract---secondary/output
  ccu000-diabetes-unspecified---secondary:
    run: ccu000-diabetes-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: dependent-ccu000-diabetes---secondary/output
  mononeuropathy-ccu000-diabetes---secondary:
    run: mononeuropathy-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-unspecified---secondary/output
  ccu000-diabetes-mellitus---secondary:
    run: ccu000-diabetes-mellitus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: mononeuropathy-ccu000-diabetes---secondary/output
  retinopathy-ccu000-diabetes---secondary:
    run: retinopathy-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-mellitus---secondary/output
  ccu000-diabetes-malnutritionrelated---secondary:
    run: ccu000-diabetes-malnutritionrelated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: retinopathy-ccu000-diabetes---secondary/output
  arthropathy-ccu000-diabetes---secondary:
    run: arthropathy-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-malnutritionrelated---secondary/output
  neuropathy-ccu000-diabetes---secondary:
    run: neuropathy-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: arthropathy-ccu000-diabetes---secondary/output
  ccu000-diabetes-hyperglycemia---secondary:
    run: ccu000-diabetes-hyperglycemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: neuropathy-ccu000-diabetes---secondary/output
  oculopathy-ccu000-diabetes---secondary:
    run: oculopathy-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-hyperglycemia---secondary/output
  ccu000-diabetes-uncontrolled---secondary:
    run: ccu000-diabetes-uncontrolled---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: oculopathy-ccu000-diabetes---secondary/output
  dominant-ccu000-diabetes---secondary:
    run: dominant-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-uncontrolled---secondary/output
  ccu000-diabetes-remission---secondary:
    run: ccu000-diabetes-remission---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: dominant-ccu000-diabetes---secondary/output
  mixed-ccu000-diabetes---secondary:
    run: mixed-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-remission---secondary/output
  ccu000-diabetes-state---secondary:
    run: ccu000-diabetes-state---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: mixed-ccu000-diabetes---secondary/output
  neuropathic-ccu000-diabetes---secondary:
    run: neuropathic-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-state---secondary/output
  ccu000-diabetes-oedema---secondary:
    run: ccu000-diabetes-oedema---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: neuropathic-ccu000-diabetes---secondary/output
  ccu000-diabetes-complicating---secondary:
    run: ccu000-diabetes-complicating---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-oedema---secondary/output
  ccu000-diabetes-associated---secondary:
    run: ccu000-diabetes-associated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-complicating---secondary/output
  ischaemic-ccu000-diabetes---secondary:
    run: ischaemic-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-associated---secondary/output
  nonketotic-ccu000-diabetes---secondary:
    run: nonketotic-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: ischaemic-ccu000-diabetes---secondary/output
  ccu000-diabetes---secondary:
    run: ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: nonketotic-ccu000-diabetes---secondary/output
  ccu000-diabetes-gastroparesis---secondary:
    run: ccu000-diabetes-gastroparesis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes---secondary/output
  vitreous-ccu000-diabetes---secondary:
    run: vitreous-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-gastroparesis---secondary/output
  ccu000-diabetes-sensory---secondary:
    run: ccu000-diabetes-sensory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: vitreous-ccu000-diabetes---secondary/output
  exudative-ccu000-diabetes---secondary:
    run: exudative-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-sensory---secondary/output
  ccu000-diabetes-first---secondary:
    run: ccu000-diabetes-first---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: exudative-ccu000-diabetes---secondary/output
  ccu000-diabetes-microalbuminuria---secondary:
    run: ccu000-diabetes-microalbuminuria---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-first---secondary/output
  ccu000-diabetes-mauriac's---secondary:
    run: ccu000-diabetes-mauriac's---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-microalbuminuria---secondary/output
  nonproliferative-ccu000-diabetes---secondary:
    run: nonproliferative-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-mauriac's---secondary/output
  nephropathy-ccu000-diabetes---secondary:
    run: nephropathy-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: nonproliferative-ccu000-diabetes---secondary/output
  ccu000-diabetes-maturityonset---secondary:
    run: ccu000-diabetes-maturityonset---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: nephropathy-ccu000-diabetes---secondary/output
  ccu000-diabetes-screening---secondary:
    run: ccu000-diabetes-screening---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-maturityonset---secondary/output
  multiple-ccu000-diabetes---secondary:
    run: multiple-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-screening---secondary/output
  ccu000-diabetes-proteinuria---secondary:
    run: ccu000-diabetes-proteinuria---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: multiple-ccu000-diabetes---secondary/output
  peripheral-ccu000-diabetes---secondary:
    run: peripheral-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-proteinuria---secondary/output
  ccu000-diabetes-childbirth---secondary:
    run: ccu000-diabetes-childbirth---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: peripheral-ccu000-diabetes---secondary/output
  ccu000-diabetes-gangrene---secondary:
    run: ccu000-diabetes-gangrene---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-childbirth---secondary/output
  ccu000-diabetes-circulatory---secondary:
    run: ccu000-diabetes-circulatory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-gangrene---secondary/output
  ccu000-diabetes-examination---secondary:
    run: ccu000-diabetes-examination---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-circulatory---secondary/output
  angiopathy-ccu000-diabetes---secondary:
    run: angiopathy-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-examination---secondary/output
  retinal-ccu000-diabetes---secondary:
    run: retinal-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: angiopathy-ccu000-diabetes---secondary/output
  hypoglycaemic-ccu000-diabetes---secondary:
    run: hypoglycaemic-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: retinal-ccu000-diabetes---secondary/output
  ccu000-diabetes-second---secondary:
    run: ccu000-diabetes-second---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: hypoglycaemic-ccu000-diabetes---secondary/output
  dietary-ccu000-diabetes---secondary:
    run: dietary-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-second---secondary/output
  cooccurrent-ccu000-diabetes---secondary:
    run: cooccurrent-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: dietary-ccu000-diabetes---secondary/output
  ccu000-diabetes-ulcer---secondary:
    run: ccu000-diabetes-ulcer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: cooccurrent-ccu000-diabetes---secondary/output
  optic-ccu000-diabetes---secondary:
    run: optic-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-ulcer---secondary/output
  pancreatic-ccu000-diabetes---secondary:
    run: pancreatic-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: optic-ccu000-diabetes---secondary/output
  ccu000-diabetes-background---secondary:
    run: ccu000-diabetes-background---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: pancreatic-ccu000-diabetes---secondary/output
  right-ccu000-diabetes---secondary:
    run: right-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-background---secondary/output
  nonsteroid-ccu000-diabetes---secondary:
    run: nonsteroid-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: right-ccu000-diabetes---secondary/output
  ccu000-diabetes-ketoacidosis---secondary:
    run: ccu000-diabetes-ketoacidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: nonsteroid-ccu000-diabetes---secondary/output
  ketoacidotic-ccu000-diabetes---secondary:
    run: ketoacidotic-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-ketoacidosis---secondary/output
  absent-ccu000-diabetes---secondary:
    run: absent-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: ketoacidotic-ccu000-diabetes---secondary/output
  fibrocalculous-ccu000-diabetes---secondary:
    run: fibrocalculous-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: absent-ccu000-diabetes---secondary/output
  ccu000-diabetes-amyotrophy---secondary:
    run: ccu000-diabetes-amyotrophy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: fibrocalculous-ccu000-diabetes---secondary/output
  insulindependent-ccu000-diabetes---secondary:
    run: insulindependent-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-amyotrophy---secondary/output
  advanced-ccu000-diabetes---secondary:
    run: advanced-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: insulindependent-ccu000-diabetes---secondary/output
  lipoatrophic-ccu000-diabetes---secondary:
    run: lipoatrophic-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: advanced-ccu000-diabetes---secondary/output
  ccu000-diabetes-programme---secondary:
    run: ccu000-diabetes-programme---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: lipoatrophic-ccu000-diabetes---secondary/output
  ccu000-diabetes-review---secondary:
    run: ccu000-diabetes-review---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-programme---secondary/output
  macular-ccu000-diabetes---secondary:
    run: macular-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-review---secondary/output
  moderate-ccu000-diabetes---secondary:
    run: moderate-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: macular-ccu000-diabetes---secondary/output
  chronic-ccu000-diabetes---secondary:
    run: chronic-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: moderate-ccu000-diabetes---secondary/output
  ccu000-diabetes-history---secondary:
    run: ccu000-diabetes-history---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: chronic-ccu000-diabetes---secondary/output
  ccu000-diabetes-lipodystrophy---secondary:
    run: ccu000-diabetes-lipodystrophy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-history---secondary/output
  ccu000-diabetes-threatening---secondary:
    run: ccu000-diabetes-threatening---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-lipodystrophy---secondary/output
  ccu000-diabetes-brittle---secondary:
    run: ccu000-diabetes-brittle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-threatening---secondary/output
  ccu000-diabetes-invitation---secondary:
    run: ccu000-diabetes-invitation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-brittle---secondary/output
  ccu000-diabetes-indicatorrelated---secondary:
    run: ccu000-diabetes-indicatorrelated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-invitation---secondary/output
  ccu000-diabetes-invite---secondary:
    run: ccu000-diabetes-invite---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-indicatorrelated---secondary/output
  ccu000-diabetes-insulin---secondary:
    run: ccu000-diabetes-insulin---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-invite---secondary/output
  acute-ccu000-diabetes---secondary:
    run: acute-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-insulin---secondary/output
  ccu000-diabetes-treated---secondary:
    run: ccu000-diabetes-treated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: acute-ccu000-diabetes---secondary/output
  hyperosmolar-ccu000-diabetes---secondary:
    run: hyperosmolar-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-treated---secondary/output
  ccu000-diabetes-resistance---secondary:
    run: ccu000-diabetes-resistance---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: hyperosmolar-ccu000-diabetes---secondary/output
  stable-ccu000-diabetes---secondary:
    run: stable-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-resistance---secondary/output
  renal-ccu000-diabetes---secondary:
    run: renal-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: stable-ccu000-diabetes---secondary/output
  ccu000-diabetes-steroidinduced---secondary:
    run: ccu000-diabetes-steroidinduced---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: renal-ccu000-diabetes---secondary/output
  ccu000-diabetes-third---secondary:
    run: ccu000-diabetes-third---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-steroidinduced---secondary/output
  ccu000-diabetes-vessel---secondary:
    run: ccu000-diabetes-vessel---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-third---secondary/output
  neurological-ccu000-diabetes---secondary:
    run: neurological-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-vessel---secondary/output
  ccu000-diabetes-deafness---secondary:
    run: ccu000-diabetes-deafness---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: neurological-ccu000-diabetes---secondary/output
  ccu000-diabetes-education---secondary:
    run: ccu000-diabetes-education---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-deafness---secondary/output
  ccu000-diabetes-warning---secondary:
    run: ccu000-diabetes-warning---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-education---secondary/output
  ccu000-diabetes-preexisting---secondary:
    run: ccu000-diabetes-preexisting---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-warning---secondary/output
  ccu000-diabetes-autoimmune---secondary:
    run: ccu000-diabetes-autoimmune---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-preexisting---secondary/output
  ccu000-diabetes-service---secondary:
    run: ccu000-diabetes-service---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-autoimmune---secondary/output
  ccu000-diabetes-leprechaunism---secondary:
    run: ccu000-diabetes-leprechaunism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-service---secondary/output
  ccu000-diabetes-manifestation---secondary:
    run: ccu000-diabetes-manifestation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-leprechaunism---secondary/output
  severe-ccu000-diabetes---secondary:
    run: severe-ccu000-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: ccu000-diabetes-manifestation---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: severe-ccu000-diabetes---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
