import 'package:flutter/material.dart';
import 'package:newstter/Models/Jobs/Jobs.dart';
import 'package:newstter/screens/jobs/job_row.dart';
import 'package:newstter/Theme.dart' as Theme;

class JobList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        color: Theme.Colors.jobPageBackground,
        child: ListView.builder(
          itemExtent: 120.0,
          itemCount: JobDao.jobs.length,
          itemBuilder: (_, index) => JobRow(JobDao.jobs[index]),
        ),
      ),
    );
  }
}
