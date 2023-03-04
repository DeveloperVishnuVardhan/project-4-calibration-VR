/*
 * Authors:
 * 1. Jyothi Vishnu Vardhan Kolla.
 * 2. Vidya ganesh.
 * CS-5330 Spring 2023 semester.
 */

#include <iostream>
#include <opencv2/opencv.hpp>

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

  while (true) {
	cv::Mat frame; // Mat object to capture each frame of video.
	bool bsuccess = cap.read(frame);

	// break from the loop if frames cannot be captured properly.
	if (!bsuccess) {
	  std::cout << "Video camera is disconnected" << std::endl;
	  std::cin.get();
	  break;
	}

	cv::Mat gray_frame; // container to store greyscaled frame;
	cv::cvtColor(frame, gray_frame, cv::COLOR_BGR2GRAY);
	std::vector<cv::Point2f> corners; // Vector to store the corners of the chess board.
	bool found = cv::findChessboardCorners(gray_frame, cv::Size(9, 6), corners);

	if (found) { // checking whether bound is found or not.
	  //std::cout << corners.size() << " " << "first corner is" << corners[0].x << "," << corners[0].y << std::endl;
	  cv::cornerSubPix(gray_frame,
					   corners,
					   cv::Size(11, 11),
					   cv::Size(-1, -1),
					   cv::TermCriteria(cv::TermCriteria::EPS + cv::TermCriteria::COUNT, 40, 0.001));
	}

	// draw the corners in the chessboard.
	cv::drawChessboardCorners(frame, cv::Size(9, 6), corners, found);

	cv::imshow(window_name, frame);
	int k = cv::waitKey(5);

	if (k=='q') {
	  cv::destroyWindow(window_name);
	  break;
	}
  }
  return 0;
}
