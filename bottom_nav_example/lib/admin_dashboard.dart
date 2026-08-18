import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: AdminDashboard()));

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Admin Dashboard', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.indigo[900],
        actions: [
          IconButton(icon: const Icon(Icons.notifications, color: Colors.white), onPressed: () {}),
          IconButton(icon: const Icon(Icons.logout, color: Colors.white), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 1. Super Admin Profile Header Card
            Card(
              color: Colors.lightGreen[50],
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue[100],
                  child: const Icon(Icons.shield, color: Colors.blue),
                ),
                title: const Text('Super Admin', style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: const Text('admin@example.com'),
                trailing: IconButton(
                  icon: const Icon(Icons.login_outlined),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(height: 20),

            // 2. Stats Grid (33 Employees, 46 Tasks)
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.6, // Wider than tall for compact stats
              children: [
                _buildStatCard('33', 'Employees', Icons.people_alt_outlined, Colors.green),
                _buildStatCard('46', 'Tasks', Icons.check_circle_outline, Colors.orange),
              ],
            ),
            const SizedBox(height: 20),

            // 3. Main Navigation Grid Menu
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 1.1, // Near square shape for menu blocks
              children: [
                _buildMenuCard('Employee\nManagement', Icons.group, Colors.blue[700]!),
                _buildMenuCard('Task\nManagement', Icons.assignment, Colors.blue[900]!),
                _buildMenuCard('Attendance\nManagement', Icons.calendar_month, Colors.blue[600]!),
                _buildMenuCard('Expanse\nTracking', Icons.bar_chart, Colors.blue[800]!),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper Widget for Stats Cards
  Widget _buildStatCard(String count, String label, IconData icon, Color iconColor) {
    return Card(
      color: Colors.white,
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: iconColor, size: 28),
            const SizedBox(height: 4),
            Text(count, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
          ],
        ),
      ),
    );
  }

  // Helper Widget for Main Grid Navigation Cards
  Widget _buildMenuCard(String title, IconData icon, Color iconColor) {
    return Card(
      color: Colors.white,
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: iconColor, size: 40),
              const SizedBox(height: 12),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
