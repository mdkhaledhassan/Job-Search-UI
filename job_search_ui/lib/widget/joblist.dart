import 'package:flutter/material.dart';
import 'package:job_search_ui/model/job.dart';
import 'package:job_search_ui/widget/jobdetails.dart';
import 'package:job_search_ui/widget/jobitem.dart';

class JobList extends StatelessWidget {
  final joblist = Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
      child: Container(
        height: 170,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => JobDetails(joblist[index]));
                  },
                  child: JobItem(joblist[index]));
            }),
            separatorBuilder: (context, index) => SizedBox(
                  width: 10,
                ),
            itemCount: joblist.length),
      ),
    );
  }
}
