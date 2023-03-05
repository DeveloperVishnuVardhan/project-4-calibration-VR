//
// Created by Jyothi vishnu vardhan Kolla on 3/5/23.
//

#ifndef MAIN_CPP__OPERATIONS_H_
#define MAIN_CPP__OPERATIONS_H_

#endif //MAIN_CPP__OPERATIONS_H_

/*
 * A function that returns the world coordinates of a chess board with
   the number of internal corners.
 * Arg-1: point-set -> A opencv 3D Point container to store
          world coordinates.
 * Arg-2: rows -> The no.of rows in the internal corners.
 * Arg-3: cols -> The no.of cols in the internal corners.
 */
int get_world_coordinates(std::vector<cv::Vec3f> &point_set, int rows, int cols);

/*
 * A function that tests whether the count of corners
   and their relative world coordinates are same.
 * Args-1: Pointlist -> A 2D vector of world coordinates.
 * Args-2: corners_list -> A 2D vector of corner points.

 Returns 0 if the count is same else returns 1.
 */
int check_validity(std::vector<std::vector<cv::Vec3f>> &point_list,
				   std::vector<std::vector<cv::Point2f>> &corners_list);