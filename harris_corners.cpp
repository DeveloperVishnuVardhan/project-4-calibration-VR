/*
 * Authors:
 * 1. Jyothi Vishnu Vardhan Kolla.
 * 2. Vidya ganesh.
 * CS-5330 Spring 2023 semester.
 */
#include<iostream>
#include<opencv2/opencv.hpp>
using namespace std;

int main() {
  // open the default camera.
  cv::VideoCapture cap(0);

  // if not success exit the program.
  if (!cap.isOpened()) {
	std::cout << "Cannot open the video camera" << std::endl;
	std::cin.get(); // wait for a key press.
	return -1;
  }

  while (true) {
	cv::Mat frame;
	cv::Mat gray_frame;
	bool bsuccess = cap.read(frame);

	// break from the loop if frames cannot be captured properly.
	if (!bsuccess) {
	  std::cout << "Video camera is disconnected" << std::endl;
	  std::cin.get();
	  break;
	}
	cv::cvtColor(frame, gray_frame, cv::COLOR_BGR2GRAY);
	cv::Mat destImg;
	cv::cornerHarris(gray_frame, destImg, 2, 3, 0.04, cv::BORDER_DEFAULT);
	cv::Mat destImgnorm, destImgnorm_scaled;
	cv::normalize(destImg, destImgnorm, 0, 255, cv::NORM_MINMAX, CV_32FC1, cv::Mat());
	cv::convertScaleAbs(destImgnorm, destImgnorm_scaled);

	for (int i = 0; i < destImgnorm.rows; i++) {
	  for (int j = 0; j < destImgnorm.cols; j++) {
		if ((int)destImgnorm.at<float>(i, j) > 170) {
		  cv::circle(frame, cv::Point(j, i), 10, cv::Scalar(0, 0, 255), 2, 8, 0);
		}
	  }
	}
	cv::imshow("Harris corners", frame);
	int k = cv::waitKey(5);
	if (k=='q') {
	  break;
	}
  }
  return 0;
}