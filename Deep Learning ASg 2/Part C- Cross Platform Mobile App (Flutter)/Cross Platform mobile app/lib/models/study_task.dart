class StudyTask {
  final String title;
  final String priority;
  final String timeline;

  StudyTask({
    required this.title,
    required this.priority,
    required this.timeline,
  });

  // Factory constructor to create a StudyTask from JSON
  factory StudyTask.fromJson(Map<String, dynamic> json) {
    return StudyTask(
      title: json['task'] ?? 'Untitled Task',
      priority: json['priority'] ?? 'Medium',
      timeline: json['timeline'] ?? 'No timeline',
    );
  }
}

class StudyPlan {
  final String analysis;
  final List<StudyTask> tasks;

  StudyPlan({
    required this.analysis,
    required this.tasks,
  });

  factory StudyPlan.fromJson(Map<String, dynamic> json) {
    var list = json['tasks'] as List? ?? [];
    List<StudyTask> tasksList = list.map((i) => StudyTask.fromJson(i)).toList();

    return StudyPlan(
      analysis: json['analysis'] ?? '',
      tasks: tasksList,
    );
  }
}
