import 'package:flutter/material.dart';
import 'package:job_search_ui/model/job.dart';

class JobItem extends StatelessWidget {
  Job _jobs;

  JobItem(this._jobs);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(_jobs.logoUrl),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      _jobs.company,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
                Icon(
                  Icons.bookmark_outlined,
                  color: Colors.teal.shade300,
                  size: 30,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              _jobs.title,
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.yellow.shade600,
                  size: 25,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  _jobs.location,
                  style: TextStyle(color: Colors.grey.shade500),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
