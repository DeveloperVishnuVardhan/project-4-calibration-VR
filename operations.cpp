/*
 * Authors:
 * 1. Jyothi Vishnu Vardhan Kolla.
 * 2. Vidya ganesh.
 * CS-5330 Spring 2023 semester.
 */

#include<iostream>
#include<opencv2/opencv.hpp>
#include "operations.h"

/*
 * A function that returns the world coordinates of a chess board with
   the number of internal corners.
 * Arg-1: point-set -> A opencv 3D Point container to store
          world coordinates.
 * Arg-2: rows -> The no.of rows in the internal corners.
 * Arg-3: cols -> The no.of cols in the internal corners.
 */
int get_world_coordinates(std::vector<cv::Vec3f> &point_set, int rows, int cols) {
  // Iterate through rows.
  for (int i = 0; i < rows; i++) {
	for (int j = 0; j < cols; j++) {
	  point_set.push_back(cv::Point3f(j, -i, 0));
	}
  }
  return 0;
}

// counts and returns the total no of corner points in the container.
int get_corners_count(std::vector<std::vector<cv::Point2f>> &corners_list) {
  int corners_count = 0;
  for (const auto &i : corners_list) {
	for (int j = 0; j < i.size(); j++) {
	  corners_count++;
	}
  }
  return corners_count;
}

// counts and returns the total number of world coordinates in the container.
int get_points_count(std::vector<std::vector<cv::Vec3f>> &point_list) {
  int points_count = 0;
  // get the number of world_coordinates.
  for (const auto &i : point_list) {
	for (int j = 0; j < i.size(); j++) {
	  points_count++;
	}
  }
  return points_count;
}

/*
 * A function that tests whether the count of corners
   and their relative world coordinates are same.
 * Args-1: Pointlist -> A 2D vector of world coordinates.
 * Args-2: corners_list -> A 2D vector of corner points.

 Returns 0 if the count is same else returns 1.
 */
int check_validity(std::vector<std::vector<cv::Vec3f>> &point_list,
				   std::vector<std::vector<cv::Point2f>> &corners_list) {
  int corners_count = get_corners_count(corners_list);
  int points_count = get_points_count(point_list);

  if (corners_count==points_count)
	return 0;
  else
	return 1;
}
