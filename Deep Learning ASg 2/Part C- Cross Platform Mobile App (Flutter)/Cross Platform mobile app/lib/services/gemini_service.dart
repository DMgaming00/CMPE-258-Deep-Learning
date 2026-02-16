import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/study_task.dart';

class GeminiService {
  // Replace with your API Key or ideally use an Environment Variable
  // For this project, you will set the key before running
  static const String _apiKey = 'AIzaSyAeZbB2ej08JaKGYQP82XG1nHXgzPEEY5I'; 
  
  // Using the requested Gemini v1 endpoint
  static const String _baseUrl = 'https://generativelanguage.googleapis.com/v1/models/gemini-2.5-flash:generateContent';

  Future<StudyPlan> generateStudyPlan(String goal) async {
    final url = Uri.parse('$_baseUrl?key=$_apiKey');
    
    final prompt = '''
      Act as an expert study planner.
      Goal: "$goal"
      
      1. Analyze the goal.
      2. Break it into actionable tasks.
      3. Assign priority (High, Medium, Low).
      4. Suggest a timeline for each task.
      
      Return strictly separate JSON. Do not include markdown formatting like ```json.
      Structure:
      {
        "analysis": "Brief analysis of the goal",
        "tasks": [
          {
            "task": "Task description",
            "priority": "High|Medium|Low",
            "timeline": "e.g. 2 days"
          }
        ]
      }
    ''';

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'contents': [
            {
              'parts': [
                { 'text': prompt }
              ]
            }
          ]
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        
        // Extract text from the response as required
        final String rawText = data["candidates"][0]["content"]["parts"][0]["text"];
        
        // Clean markdown formatting if present
        String cleanJson = rawText.replaceAll(RegExp(r'^```json\s*'), '').replaceAll(RegExp(r'\s*```$'), '').trim();
        // Fallback for simple replace if regex misses specific patterns
        cleanJson = cleanJson.replaceAll('```json', '').replaceAll('```', '').trim();

        return StudyPlan.fromJson(jsonDecode(cleanJson));
      } else {
        // Handle non-200 responses properly
        print('Error Status Code: ${response.statusCode}');
        print('Error Body: ${response.body}');
        throw Exception('Failed to generate plan: ${response.statusCode}');
      }
    } catch (e) {
      print('Exception in generateStudyPlan: $e');
      throw Exception('Error: $e');
    }
  }
}
