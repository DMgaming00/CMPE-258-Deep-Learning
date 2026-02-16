import 'package:flutter/material.dart';
import '../services/gemini_service.dart';
import '../models/study_task.dart';
import '../widgets/task_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();
  final GeminiService _geminiService = GeminiService();
  
  StudyPlan? _studyPlan;
  bool _isLoading = false;
  String? _errorMessage;

  Future<void> _generatePlan() async {
    final goal = _controller.text.trim();
    if (goal.isEmpty) return;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
      _studyPlan = null;
    });

    try {
      final plan = await _geminiService.generateStudyPlan(goal);
      setState(() {
        _studyPlan = plan;
      });
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Study Planner'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Input Section
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: 'e.g., Prepare for Data Science Interview',
                        border: OutlineInputBorder(),
                        labelText: 'Enter your learning goal',
                      ),
                      maxLines: 2,
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: _isLoading ? null : _generatePlan,
                        icon: _isLoading 
                          ? const SizedBox(
                              width: 20, 
                              height: 20, 
                              child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2)
                            ) 
                          : const Icon(Icons.auto_awesome),
                        label: Text(_isLoading ? 'Generating Plan...' : 'Generate Study Plan'),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 24),

            // Results Section
            if (_errorMessage != null)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.red.shade200),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.error_outline, color: Colors.red),
                    const SizedBox(width: 12),
                    Expanded(child: Text(_errorMessage!, style: TextStyle(color: Colors.red.shade900))),
                  ],
                ),
              ),

            if (_studyPlan != null) ...[
              const Text(
                'Your Customized Plan',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              if (_studyPlan!.analysis.isNotEmpty)
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    _studyPlan!.analysis,
                    style: TextStyle(color: Colors.blue.shade900, fontStyle: FontStyle.italic),
                  ),
                ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: _studyPlan!.tasks.length,
                  itemBuilder: (context, index) {
                    return TaskCard(task: _studyPlan!.tasks[index]);
                  },
                ),
              ),
            ] else if (!_isLoading && _errorMessage == null)
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.school_outlined, size: 64, color: Colors.grey.shade300),
                      const SizedBox(height: 16),
                      Text(
                        'Enter a goal to get started',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
