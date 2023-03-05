/*
 * Authors:
 * 1. Jyothi Vishnu Vardhan Kolla.
 * 2. Vidya ganesh.
 * CS-5330 Spring 2023 semester.
 */

#include <iostream>
#include <opencv2/opencv.hpp>
#include "operations.h"

int main() {
  // open the default camera.
  cv::VideoCapture cap(1);

  // if not success, exit program.
  if (!cap.isOpened()) {
	std::cout << "Cannot open the video camera" << std::endl;
	std::cin.get(); // Wait for a key press.
	return -1;
  }

  std::string window_name = "Real-Time-Video";
  cv::namedWindow(window_name);

  cv::Mat gray_frame; // container to store greyscaled frame;
  cv::Mat valid_frame; // container to store valid frame containing chessboard.
  std::vector<std::vector<cv::Vec3f>> point_list; // 2D vector to store world coordinates.
  std::vector<std::vector<cv::Point2f>> corners_list; // 2D vector to store corner points.

  while (true) {
	cv::Mat frame; // Mat object to capture each frame of video.
	bool bsuccess = cap.read(frame);

	// break from the loop if frames cannot be captured properly.
	if (!bsuccess) {
	  std::cout << "Video camera is disconnected" << std::endl;
	  std::cin.get();
	  break;
	}

	std::vector<cv::Point2f> corners; // Vector to store the corners of the chess board.
	std::vector<cv::Vec3f> point_set; // Vector to store world coordinates.
	cv::cvtColor(frame, gray_frame, cv::COLOR_BGR2GRAY);
	bool found = cv::findChessboardCorners(gray_frame, cv::Size(9, 6), corners);

	if (found) { // checking whether bound is found or not.
	  //std::cout << corners.size() << " " << "first corner is" << corners[0].x << "," << corners[0].y << std::endl;
	  cv::cornerSubPix(gray_frame,
					   corners,
					   cv::Size(11, 11),
					   cv::Size(-1, -1),
					   cv::TermCriteria(cv::TermCriteria::EPS + cv::TermCriteria::COUNT, 40, 0.001));
	  valid_frame = gray_frame.clone();
	}

	// draw the corners in the chessboard.
	cv::drawChessboardCorners(frame, cv::Size(9, 6), corners, found);

	cv::imshow(window_name, frame);
	int k = cv::waitKey(5);

	if (k=='q') {
	  cv::destroyWindow(window_name);
	  break;
	} else if (k=='s') { // Save the corner pixels and its respective world coordinates.
	  if (!valid_frame.empty()) {
		corners_list.push_back(corners);
		get_world_coordinates(point_set, 9, 6);
		point_list.push_back(point_set);

		//std::cout<<check_validity(point_list, corners_list)<<std::endl;
	  }
	}
  }
  return 0;
}
