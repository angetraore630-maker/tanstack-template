import React, { useState } from 'react';
import { BookOpen, Video, CheckCircle, XCircle, Award, ChevronRight, ChevronDown } from 'lucide-react';

const EnglishLearningSite = () => {
  const [activeSection, setActiveSection] = useState(null);
  const [quizAnswers, setQuizAnswers] = useState({});
  const [exerciseAnswers, setExerciseAnswers] = useState({});
  const [showResults, setShowResults] = useState(false);
  const [showExerciseResults, setShowExerciseResults] = useState(false);

  const sections = [
    {
      id: 'pronunciation',
      title: '1. Prononciation Américaine',
      icon: '🗣️',
      content: {
        intro: "La prononciation américaine se distingue par son 'R' prononcé et ses voyelles particulières.",
        points: [
          {
            title: "Le 'R' américain",
            explanation: "Contrairement au britannique, le 'R' est toujours prononcé, même en fin de mot.",
            examples: ["car → /kɑːr/ (et non /kɑː/)", "water → /ˈwɑːtər/", "better → /ˈbetər/"]
          },
          {
            title: "Le 'T' devient 'D'",
            explanation: "Entre deux voyelles, le 'T' se prononce comme un 'D' léger (flap T).",
            examples: ["water → sounds like 'wader'", "better → sounds like 'bedder'", "meeting → sounds like 'meeding'"]
          },
          {
            title: "Voyelles nasales",
            explanation: "Les voyelles avant 'N' sont souvent nasalisées.",
            examples: ["can → /kæ̃n/", "dance → /dæ̃ns/", "hand → /hæ̃nd/"]
          }
        ],
        videos: [
          { title: "American English Pronunciation", url: "https://www.youtube.com/watch?v=dfoRdKuPF9I" },
          { title: "The American R Sound", url: "https://www.youtube.com/watch?v=dLJKdSd1wpY" }
        ]
      }
    },
    {
      id: 'grammar',
      title: '2. Grammaire Essentielle',
      icon: '📚',
      content: {
        intro: "Les temps et structures grammaticales les plus utilisés en anglais américain.",
        points: [
          {
            title: "Present Simple vs Present Continuous",
            explanation: "Simple = habitudes/vérités. Continuous = actions en cours.",
            examples: [
              "I work every day (habitude)",
              "I'm working right now (en ce moment)",
              "She lives in New York (permanent)",
              "She's living with friends temporarily (temporaire)"
            ]
          },
          {
            title: "Past Simple vs Present Perfect",
            explanation: "Past Simple = moment précis passé. Present Perfect = lien avec le présent.",
            examples: [
              "I visited Paris in 2020 (date précise)",
              "I've visited Paris (expérience de vie)",
              "Did you eat lunch? (quand?)",
              "Have you eaten lunch? (déjà fait ou pas?)"
            ]
          },
          {
            title: "Modaux essentiels",
            explanation: "Can, should, must, would expriment capacité, conseil, obligation, conditionnel.",
            examples: [
              "I can swim (capacité)",
              "You should study (conseil)",
              "We must go (obligation)",
              "I would like coffee (politesse)"
            ]
          }
        ],
        videos: [
          { title: "English Tenses Overview", url: "https://www.youtube.com/watch?v=3QzRXKXQhL8" },
          { title: "Modal Verbs Explained", url: "https://www.youtube.com/watch?v=DRx2nHe2VVw" }
        ]
      }
    },
    {
      id: 'vocabulary',
      title: '3. Vocabulaire du Quotidien',
      icon: '💬',
      content: {
        intro: "Les mots et expressions les plus fréquents dans la vie quotidienne américaine.",
        points: [
          {
            title: "Salutations informelles",
            explanation: "Les Américains privilégient un ton décontracté.",
            examples: [
              "Hey! / What's up? (Salut!)",
              "How's it going? (Comment ça va?)",
              "See you later! / Catch you later! (À plus!)"
            ]
          },
          {
            title: "Expressions courantes",
            explanation: "Phrases idiomatiques utilisées quotidiennement.",
            examples: [
              "No worries = Pas de problème",
              "For sure = Bien sûr",
              "I'm down = Je suis partant",
              "That's awesome = C'est génial"
            ]
          },
          {
            title: "Au restaurant/magasin",
            explanation: "Vocabulaire pratique pour les interactions commerciales.",
            examples: [
              "I'll have... = Je vais prendre...",
              "Can I get...? = Je peux avoir...?",
              "Check, please = L'addition, s'il vous plaît",
              "How much is this? = C'est combien?"
            ]
          }
        ],
        videos: [
          { title: "Daily English Conversations", url: "https://www.youtube.com/watch?v=AMLn19jwEhA" },
          { title: "American Slang", url: "https://www.youtube.com/watch?v=HWU0xQDhpy4" }
        ]
      }
    },
    {
      id: 'listening',
      title: '4. Compréhension Orale',
      icon: '👂',
      content: {
        intro: "Stratégies pour améliorer votre écoute et comprendre l'anglais parlé rapidement.",
        points: [
          {
            title: "Contractions courantes",
            explanation: "Les anglophones contractent constamment leurs mots.",
            examples: [
              "I'm = I am",
              "gonna = going to",
              "wanna = want to",
              "gotta = got to (must)",
              "coulda/shoulda/woulda = could have/should have/would have"
            ]
          },
          {
            title: "Mots avalés",
            explanation: "Certains mots sont à peine prononcés dans le flux de parole.",
            examples: [
              "What do you → Whaddya",
              "Give me → Gimme",
              "Let me → Lemme",
              "Kind of → Kinda"
            ]
          },
          {
            title: "Intonation américaine",
            explanation: "L'accent tonique et le rythme sont essentiels.",
            examples: [
              "REcord (nom) vs reCORD (verbe)",
              "PREsent (nom) vs preSENT (verbe)",
              "Questions ↗️ Affirmations ↘️"
            ]
          }
        ],
        videos: [
          { title: "Understanding Fast English", url: "https://www.youtube.com/watch?v=Zd4SkXNOviU" },
          { title: "English Listening Practice", url: "https://www.youtube.com/watch?v=iRZ2Sh5-XuM" }
        ]
      }
    },
    {
      id: 'culture',
      title: '5. Culture Américaine',
      icon: '🇺🇸',
      content: {
        intro: "Comprendre la culture pour mieux comprendre la langue.",
        points: [
          {
            title: "Small talk",
            explanation: "Les conversations légères sont très importantes.",
            examples: [
              "Nice weather today! (Beau temps aujourd'hui!)",
              "How was your weekend? (Comment était ton weekend?)",
              "Did you watch the game? (Tu as regardé le match?)"
            ]
          },
          {
            title: "Politesse américaine",
            explanation: "Les formules de politesse sont directes mais chaleureuses.",
            examples: [
              "Thank you so much!",
              "I appreciate it!",
              "Have a great day!",
              "Excuse me (pour attirer l'attention)"
            ]
          },
          {
            title: "Différences UK vs US",
            explanation: "Vocabulaire différent pour les mêmes objets.",
            examples: [
              "Apartment (US) = Flat (UK)",
              "Elevator (US) = Lift (UK)",
              "Truck (US) = Lorry (UK)",
              "Garbage (US) = Rubbish (UK)"
            ]
          }
        ],
        videos: [
          { title: "American Culture Guide", url: "https://www.youtube.com/watch?v=Pba9TKZkc4c" },
          { title: "British vs American English", url: "https://www.youtube.com/watch?v=1KpK8W88m5k" }
        ]
      }
    }
  ];

  const quizQuestions = [
    {
      id: 1,
      question: "Comment se prononce 'water' en anglais américain?",
      options: ["wɔːtə", "wɑːtər", "wədər", "wɔːtɜːr"],
      correct: 1
    },
    {
      id: 2,
      question: "Quelle phrase exprime une action en cours maintenant?",
      options: ["I work here", "I'm working here", "I worked here", "I have worked here"],
      correct: 1
    },
    {
      id: 3,
      question: "Que signifie 'I'm down'?",
      options: ["Je suis triste", "Je suis partant", "Je suis fatigué", "Je suis en bas"],
      correct: 1
    },
    {
      id: 4,
      question: "Quelle est la contraction de 'going to'?",
      options: ["gotta", "gonna", "wanna", "coulda"],
      correct: 1
    },
    {
      id: 5,
      question: "Quel temps utilise-t-on pour une expérience de vie sans date précise?",
      options: ["Past Simple", "Present Perfect", "Present Continuous", "Past Continuous"],
      correct: 1
    }
  ];

  const exercises = [
    {
      id: 1,
      question: "Traduisez: 'Je travaille actuellement sur un projet.'",
      answer: "I'm working on a project (right now).",
      type: "translation"
    },
    {
      id: 2,
      question: "Complétez: 'I ___ to New York three times.' (aller - expérience)",
      answer: "have been",
      type: "fill"
    },
    {
      id: 3,
      question: "Prononciation: Comment diriez-vous 'better' en américain? (transcrivez phonétiquement)",
      answer: "bedder",
      type: "pronunciation"
    },
    {
      id: 4,
      question: "Que répondre à 'How's it going?'",
      answer: "Good! / Pretty good! / Not bad! / Great!",
      type: "conversation"
    },
    {
      id: 5,
      question: "Complétez avec le modal: 'You ___ study for the exam.' (conseil)",
      answer: "should",
      type: "fill"
    },
    {
      id: 6,
      question: "Traduisez: 'Je peux avoir l'addition, s'il vous plaît?'",
      answer: "Can I get the check, please? / Check, please.",
      type: "translation"
    },
    {
      id: 7,
      question: "Quelle est la forme contractée de 'want to'?",
      answer: "wanna",
      type: "contraction"
    },
    {
      id: 8,
      question: "Complétez: 'She ___ in Paris in 2019.' (vivre - date précise passée)",
      answer: "lived",
      type: "fill"
    },
    {
      id: 9,
      question: "Comment dire 'ascenseur' en anglais américain?",
      answer: "elevator",
      type: "vocabulary"
    },
    {
      id: 10,
      question: "Traduisez: 'Je dois partir maintenant.'",
      answer: "I must go now. / I have to go now. / I gotta go now.",
      type: "translation"
    }
  ];

  const handleQuizAnswer = (questionId, optionIndex) => {
    setQuizAnswers({ ...quizAnswers, [questionId]: optionIndex });
  };

  const handleExerciseAnswer = (exerciseId, value) => {
    setExerciseAnswers({ ...exerciseAnswers, [exerciseId]: value });
  };

  const submitQuiz = () => {
    setShowResults(true);
  };

  const submitExercises = () => {
    setShowExerciseResults(true);
  };

  const calculateScore = () => {
    let correct = 0;
    quizQuestions.forEach(q => {
      if (quizAnswers[q.id] === q.correct) correct++;
    });
    return correct;
  };

  const toggleSection = (sectionId) => {
    setActiveSection(activeSection === sectionId ? null : sectionId);
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100 p-4 md:p-8">
      <div className="max-w-5xl mx-auto">
        {/* Header */}
        <div className="bg-white rounded-2xl shadow-xl p-8 mb-8">
          <div className="flex items-center gap-4 mb-4">
            <BookOpen className="w-12 h-12 text-indigo-600" />
            <div>
              <h1 className="text-4xl font-bold text-gray-800">Apprendre l'Anglais Américain</h1>
              <p className="text-gray-600 mt-2">Programme intensif de 3 mois</p>
            </div>
          </div>
          <div className="bg-indigo-50 p-4 rounded-lg mt-4">
            <p className="text-indigo-800">
              <strong>Objectif:</strong> Comprendre l'anglais américain parlé et écrit à travers des fiches structurées, 
              des exemples pratiques, et des exercices interactifs.
            </p>
          </div>
        </div>

        {/* Sections */}
        {sections.map((section) => (
          <div key={section.id} className="bg-white rounded-xl shadow-lg mb-6 overflow-hidden">
            <button
              onClick={() => toggleSection(section.id)}
              className="w-full p-6 flex items-center justify-between hover:bg-gray-50 transition-colors"
            >
              <div className="flex items-center gap-4">
                <span className="text-4xl">{section.icon}</span>
                <h2 className="text-2xl font-bold text-gray-800">{section.title}</h2>
              </div>
              {activeSection === section.id ? (
                <ChevronDown className="w-6 h-6 text-gray-600" />
              ) : (
                <ChevronRight className="w-6 h-6 text-gray-600" />
              )}
            </button>

            {activeSection === section.id && (
              <div className="p-6 pt-0 border-t">
                <p className="text-gray-700 mb-6 text-lg italic">{section.content.intro}</p>

                {section.content.points.map((point, idx) => (
                  <div key={idx} className="mb-8 bg-gray-50 p-6 rounded-lg">
                    <h3 className="text-xl font-bold text-indigo-700 mb-3">{point.title}</h3>
                    <p className="text-gray-700 mb-4">{point.explanation}</p>
                    <div className="bg-white p-4 rounded border-l-4 border-indigo-500">
                      <p className="font-semibold text-gray-700 mb-2">Exemples:</p>
                      <ul className="space-y-2">
                        {point.examples.map((example, i) => (
                          <li key={i} className="text-gray-600 flex items-start">
                            <span className="text-indigo-500 mr-2">•</span>
                            <span>{example}</span>
                          </li>
                        ))}
                      </ul>
                    </div>
                  </div>
                ))}

                <div className="mt-6 bg-indigo-50 p-6 rounded-lg">
                  <div className="flex items-center gap-2 mb-4">
                    <Video className="w-6 h-6 text-indigo-600" />
                    <h3 className="text-lg font-bold text-gray-800">Vidéos complémentaires</h3>
                  </div>
                  <div className="space-y-2">
                    {section.content.videos.map((video, idx) => (
                      <a
                        key={idx}
                        href={video.url}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="block p-3 bg-white rounded hover:bg-indigo-100 transition-colors"
                      >
                        <span className="text-indigo-600 hover:text-indigo-800 font-medium">
                          ▶ {video.title}
                        </span>
                      </a>
                    ))}
                  </div>
                </div>
              </div>
            )}
          </div>
        ))}

        {/* Quiz Section */}
        <div className="bg-white rounded-xl shadow-lg p-8 mb-8">
          <h2 className="text-3xl font-bold text-gray-800 mb-6 flex items-center gap-3">
            <Award className="w-8 h-8 text-yellow-500" />
            QCM - Quiz de Compréhension
          </h2>

          {quizQuestions.map((q) => (
            <div key={q.id} className="mb-6 p-6 bg-gray-50 rounded-lg">
              <p className="font-semibold text-gray-800 mb-4">
                {q.id}. {q.question}
              </p>
              <div className="space-y-2">
                {q.options.map((option, idx) => (
                  <label
                    key={idx}
                    className={`flex items-center p-3 rounded cursor-pointer transition-colors ${
                      quizAnswers[q.id] === idx
                        ? 'bg-indigo-100 border-2 border-indigo-500'
                        : 'bg-white border-2 border-gray-200 hover:border-indigo-300'
                    } ${
                      showResults &&
                      (idx === q.correct
                        ? 'bg-green-100 border-green-500'
                        : quizAnswers[q.id] === idx
                        ? 'bg-red-100 border-red-500'
                        : '')
                    }`}
                  >
                    <input
                      type="radio"
                      name={`question-${q.id}`}
                      checked={quizAnswers[q.id] === idx}
                      onChange={() => handleQuizAnswer(q.id, idx)}
                      className="mr-3"
                      disabled={showResults}
                    />
                    <span className="text-gray-700">{option}</span>
                    {showResults && idx === q.correct && (
                      <CheckCircle className="w-5 h-5 text-green-600 ml-auto" />
                    )}
                    {showResults && quizAnswers[q.id] === idx && idx !== q.correct && (
                      <XCircle className="w-5 h-5 text-red-600 ml-auto" />
                    )}
                  </label>
                ))}
              </div>
            </div>
          ))}

          {!showResults ? (
            <button
              onClick={submitQuiz}
              className="w-full bg-indigo-600 text-white py-4 rounded-lg font-bold text-lg hover:bg-indigo-700 transition-colors"
            >
              Valider le Quiz
            </button>
          ) : (
            <div className="bg-indigo-50 p-6 rounded-lg text-center">
              <p className="text-2xl font-bold text-indigo-800">
                Score: {calculateScore()}/{quizQuestions.length}
              </p>
              <p className="text-gray-700 mt-2">
                {calculateScore() === quizQuestions.length
                  ? '🎉 Parfait! Excellent travail!'
                  : calculateScore() >= 3
                  ? '👍 Bien joué! Continuez comme ça!'
                  : '💪 Revoyez les leçons et réessayez!'}
              </p>
            </div>
          )}
        </div>

        {/* Exercises Section */}
        <div className="bg-white rounded-xl shadow-lg p-8">
          <h2 className="text-3xl font-bold text-gray-800 mb-6">
            📝 Exercices d'Application (10)
          </h2>

          {exercises.map((ex) => (
            <div key={ex.id} className="mb-6 p-6 bg-gray-50 rounded-lg">
              <p className="font-semibold text-gray-800 mb-3">
                Exercice {ex.id}: {ex.question}
              </p>
              <input
                type="text"
                value={exerciseAnswers[ex.id] || ''}
                onChange={(e) => handleExerciseAnswer(ex.id, e.target.value)}
                className="w-full p-3 border-2 border-gray-300 rounded focus:border-indigo-500 focus:outline-none"
                placeholder="Votre réponse..."
                disabled={showExerciseResults}
              />
              {showExerciseResults && (
                <div className="mt-3 p-3 bg-green-50 border-l-4 border-green-500 rounded">
                  <p className="text-sm text-gray-700">
                    <strong>Réponse correcte:</strong> {ex.answer}
                  </p>
                </div>
              )}
            </div>
          ))}

          {!showExerciseResults ? (
            <button
              onClick={submitExercises}
              className="w-full bg-green-600 text-white py-4 rounded-lg font-bold text-lg hover:bg-green-700 transition-colors"
            >
              Voir les Corrections
            </button>
          ) : (
            <div className="bg-green-50 p-6 rounded-lg text-center">
              <p className="text-xl font-bold text-green-800">
                ✅ Corrections affichées! Comparez vos réponses.
              </p>
            </div>
          )}
        </div>

        {/* Footer */}
        <div className="mt-8 text-center text-gray-600 bg-white rounded-lg p-6">
          <p className="font-semibold mb-2">🎯 Plan d'étude suggéré sur 3 mois:</p>
          <div className="text-left max-w-2xl mx-auto space-y-2">
            <p>• <strong>Mois 1:</strong> Prononciation + Grammaire de base (30 min/jour)</p>
            <p>• <strong>Mois 2:</strong> Vocabulaire + Écoute intensive (45 min/jour)</p>
            <p>• <strong>Mois 3:</strong> Pratique conversationnelle + Immersion culturelle (1h/jour)</p>
          </div>
          <p className="mt-4 italic">Bonne chance dans votre apprentissage! 🚀</p>
        </div>
      </div>
    </div>
  );
};

export default EnglishLearningSite;
